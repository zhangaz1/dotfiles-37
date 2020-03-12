local wibox = require("wibox")
local watch = require("awful.widget.watch")
local spawn = require("awful.spawn")

local BRIGHTNESS_ICON = "🔆"
local GET_BRIGHTNESS_CMD = "cat /sys/class/power_supply/BAT0/capacity"   -- "xbacklight -get"

local widget = {}


local function worker(args)

    local args = args or {}
    local brightness_icon = args.brightness_icon or BRIGHTNESS_ICON
    local get_brightness_cmd = args.get_brightness_cmd or GET_BRIGHTNESS_CMD

    local brightness_text = wibox.widget.textbox()

    widget = wibox.widget {
        brightness_text,
        layout = wibox.layout.fixed.horizontal,
    }

    local update_widget = function(widget, stdout, _, _, _)
        local brightness_level = tonumber(string.format("%.0f", stdout))
        widget:set_text(brightness_icon .. " " .. brightness_level)
    end,

    widget:connect_signal("button::press", function(_, _, _, button)
    end)

    watch(get_brightness_cmd, 0.5, update_widget, brightness_text)

    return widget
end

return setmetatable(widget, { __call = function(_, ...)
    return worker(...)
end })
