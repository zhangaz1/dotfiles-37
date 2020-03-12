-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")

local battery_widget = require("widgets.battery")
local brightness_widget = require("widgets.brightness")


-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end
-- }}}

-- {{{ Variable definitions
-- Themes define colours, icons, font and wallpapers.
beautiful.init("~/.config/awesome/themes/xresources/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "urxvt"
browser = "brave"
rofi = "rofi -show combi"
editor = os.getenv("EDITOR") or "editor"

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    awful.layout.suit.spiral,
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    awful.layout.suit.corner.nw,
    -- awful.layout.suit.floating,
    -- awful.layout.suit.tile,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    -- awful.layout.suit.tile.top,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}
-- }}}

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- {{{ Wibar
-- Create a textclock widget
mytextclock = wibox.widget.textclock()

-- Create a wibox for each screen and add it
local taglist_buttons = gears.table.join(
                    awful.button({ }, 1, function(t) t:view_only() end),
                    awful.button({ modkey }, 1, function(t)
                                              if client.focus then
                                                  client.focus:move_to_tag(t)
                                              end
                                          end),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, function(t)
                                              if client.focus then
                                                  client.focus:toggle_tag(t)
                                              end
                                          end),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
                )

local tasklist_buttons = gears.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  c:emit_signal(
                                                      "request::activate",
                                                      "tasklist",
                                                      {raise = true}
                                                  )
                                              end
                                          end),
                     awful.button({ }, 3, function()
                                              awful.menu.client_list({ theme = { width = 250 } })
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                          end))

local function set_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    set_wallpaper(s)

    -- Each screen has its own tag table.
    awful.tag({  "", "", "", "", "", "", "", "", "", ""  }, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = taglist_buttons
    }

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
        screen  = s,
        filter  = awful.widget.tasklist.filter.currenttags,
        buttons = tasklist_buttons
    }

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
            s.mylayoutbox,
            s.mypromptbox,
        },
	{
	    layout = wibox.layout.flex.horizontal
	},
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            battery_widget(),
            brightness_widget(),
            mytextclock,
        },
    }
end)
-- }}}

-- {{{ Key bindings
globalkeys = gears.table.join(
    -- Help-window
    awful.key({ modkey, "Shift"   }, "/",      hotkeys_popup.show_help, {description="show help", group="awesome"}),


    -- Tag-management
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev,  {description = "view previous", group = "tag"}),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext, {description = "view next", group = "tag" }),

    awful.key({ modkey,           }, "j", function () awful.client.focus.byidx( 1) end, { description = "focus next by index", group = "client"}),
    awful.key({ modkey,           }, "k", function () awful.client.focus.byidx(-1) end, { description = "focus previous by index", group = "client"}),

    -- Layout manipulation
    awful.key({ modkey            }, ".", function () awful.client.swap.byidx(  1)    end, {description = "swap with next client by index", group = "client"}),
    awful.key({ modkey            }, ",", function () awful.client.swap.byidx( -1)    end, {description = "swap with previous client by index", group = "client"}),
    awful.key({ modkey, "Shift"   }, "j", function () awful.screen.focus_relative( 1) end, {description = "focus the next screen", group = "screen"}),
    awful.key({ modkey, "Shift"   }, "k", function () awful.screen.focus_relative(-1) end, {description = "focus the previous screen", group = "screen"}),

    -- Standard program
    awful.key({ modkey, "Control", "Shift"   }, "q", awesome.quit, {description = "quit awesome", group = "awesome"}),
    awful.key({ modkey, "Control", "Shift"   }, "r", awesome.restart, {description = "reload awesome", group = "awesome"}),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)          end, {description = "increase master width factor", group = "layout"}),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)          end, {description = "decrease master width factor", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1, nil, true) end, {description = "increase the number of master clients", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1, nil, true) end, {description = "decrease the number of master clients", group = "layout"}),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1, nil, true)    end, {description = "increase the number of columns", group = "layout"}),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1, nil, true)    end, {description = "decrease the number of columns", group = "layout"}),
    awful.key({ modkey,           }, "space", function () awful.layout.inc( 1)                end, {description = "select next", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(-1)                end, {description = "select previous", group = "layout"}),

    -- Prompt
    awful.key({ modkey,           }, "l", function () awful.spawn("slock " .. "systemctl suspend") end, {description = "lock screen", group = "screen"}),

    -- Audio
    awful.key({ }, "XF86AudioMute",        function () awful.spawn({"amixer", "-q", "sset", "Master", "toggle"}) end, {description = "mute volume",  group = "volume"}),
    awful.key({ }, "XF86AudioRaiseVolume", function () awful.spawn({"amixer", "-q", "sset", "Master", "3%+"}) end,   {description = "increase volume", group = "volume"}),
    awful.key({ }, "XF86AudioLowerVolume", function () awful.spawn({"amixer", "-q", "sset", "Master", "3%-"}) end,   {description = "decrease volume", group = "volume"}),

    -- Brightness
    awful.key({ }, "XF86MonBrightnessUp",   function () awful.spawn({"xbacklight", "-inc", "15"}) end, {description = "increase screen brightness",  group = "system"}),
    awful.key({ }, "XF86MonBrightnessDown", function () awful.spawn({"xbacklight", "-dec", "15"}) end, {description = "descrease screen brightness", group = "system"}),

    -- Brightness
    awful.key({ }, "XF86MonBrightnessUp",   function () awful.spawn({"xbacklight", "-inc", "15"}) end, {description = "increase screen brightness",  group = "system"}),
    awful.key({ }, "XF86MonBrightnessDown", function () awful.spawn({"xbacklight", "-dec", "15"}) end, {description = "descrease screen brightness", group = "system"}),

    -- Terminal
    awful.key({ modkey }, "Return", function () awful.spawn.raise_or_spawn(terminal) end, {description = "open a terminal", group = "launcher"}),

    -- File browser
    awful.key({ modkey }, "e", function () awful.spawn.raise_or_spawn(terminal .. " -e " .. " ranger") end, {description = "open a file browsr", group = "launcher"}),

    -- Browser
    awful.key({ modkey }, "w",      function () awful.spawn.raise_or_spawn(browser) end, {description = "open a browser", group = "launcher"}),

    -- Rofi
    awful.key({ modkey,           }, "r", function () awful.spawn(rofi) end, {description = "rofi", group = "launcher"})
)

clientkeys = gears.table.join(
    awful.key({ modkey,                }, "t",      function (c) c.ontop = not c.ontop            end,          {description = "toggle keep on top", group = "client"}),
    awful.key({ modkey,                }, "f",      function (c) c.fullscreen = not c.fullscreen c:raise() end, {description = "toggle fullscreen", group = "client"}),
    awful.key({ modkey, "Shift"        }, "c",      function (c) c:kill()                         end,          {description = "close", group = "client"}),
    awful.key({ modkey, "Control"      }, "space",  awful.client.floating.toggle                     ,          {description = "toggle floating", group = "client"}),
    awful.key({ modkey, "Control"      }, "Return", function (c) c:swap(awful.client.getmaster()) end,          {description = "move to master", group = "client"}),
    awful.key({ modkey, "Shift"        }, "n",      function (c) c:move_to_screen()               end,          {description = "move to screen", group = "client"})
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = gears.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = awful.screen.focused()
                        local tag = screen.tags[i]
                        if tag then
                           tag:view_only()
                        end
                  end,
                  {description = "view tag #"..i, group = "tag"}),
        -- Toggle tag display.
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = awful.screen.focused()
                      local tag = screen.tags[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end,
                  {description = "toggle tag #" .. i, group = "tag"}),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:move_to_tag(tag)
                          end
                     end
                  end,
                  {description = "move focused client to tag #"..i, group = "tag"}),
        -- Toggle tag on focused client.
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = client.focus.screen.tags[i]
                          if tag then
                              client.focus:toggle_tag(tag)
                          end
                      end
                  end,
                  {description = "toggle focused client on tag #" .. i, group = "tag"})
    )
end

-- Set keys
root.keys(globalkeys)
-- }}}

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
      properties = { border_width = beautiful.border_width,
                     border_color = beautiful.border_normal,
                     focus = awful.client.focus.filter,
                     raise = true,
                     keys = clientkeys,
                     buttons = clientbuttons,
                     screen = awful.screen.preferred,
                     placement = awful.placement.no_overlap+awful.placement.no_offscreen
     }
    },

    -- Floating clients.
    { rule_any = {
        instance = {
          "DTA",  -- Firefox addon DownThemAll.
          "copyq",  -- Includes session name in class.
          "pinentry",
        },
        class = {
          "Arandr",
          "Blueman-manager",
          "Gpick",
          "Kruler",
          "MessageWin",  -- kalarm.
          "Sxiv",
          "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
          "Wpa_gui",
          "veromix",
          "xtightvncviewer"},

        -- Note that the name property shown in xprop might be set slightly after creation of the client
        -- and the name shown there might not match defined rules here.
        name = {
          "Event Tester",  -- xev.
        },
        role = {
          "AlarmWindow",  -- Thunderbird's calendar.
          "ConfigManager",  -- Thunderbird's about:config.
          "pop-up",       -- e.g. Google Chrome's (detached) Developer Tools.
        }
      }, properties = { floating = true }},

    -- Add titlebars to normal clients and dialogs
    { rule_any = {type = { "normal", "dialog" } }, properties = { titlebars_enabled = false } },

    -- Set Firefox, Chromium to always map on the tag named "2" on screen 1.
    { rule = { class = "Firefox" }, properties = { screen = 1, switch_to_tags = true, tag = "" } },
    { rule = { class = "Chromium" }, properties = { screen = 1, switch_to_tags = true, tag = "" } },
    { rule = { class = "Google-chrome" }, properties = { screen = 1, switch_to_tags = true, tag = "" } },
    { rule = { class = "Brave-browser" }, properties = { screen = 1, switch_to_tags = true, tag = "" } },

    -- Set URxvt to always run on tag "2"
    { rule = { window_title = "ranger" }, properties = { screen = 1, switch_to_tags = true, tag = "", } },

    -- Set URxvt to always run on tag "1"
    { rule = { class = "URxvt" }, properties = { screen = 1, switch_to_tags = true, tag = "", } },


    -- Set Signal, Slack to always run on tag "9"
    { rule = { class = "Signal" }, properties = { screen = 1, tag = "" } },
    { rule = { class = "Slack" }, properties = { screen = 1, tag = "" } },

}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- if not awesome.startup then awful.client.setslave(c) end

    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}

-- {{{ Autostart
do
  local cmds = {
    "compton -b",
    "nitrogen --restore"
    -- "autocutsel",
    -- "redshift",
  }

  for _, i in pairs(cmds) do
    awful.spawn.once(i,nil,i,i,nil)
  end
end
-- }}}
