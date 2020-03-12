-- Author: denisoster
-- Source: https://github.com/denisoster/awesomewm-screenshot/blob/master/screenshot.lua
--
local awful = require("awful")
local naughty = require("naughty")

timers = { 5,10 }
screenshot = os.getenv("HOME") .. "/pictures/scrots/%Y%M%d_%H%M%S.png"

function scrot_full()
    scrot("scrot " .. screenshot .. " -e 'xclip -selection c -t image/png < $f', scrot_callback", scrot_callback, "Take a screenshot of entire screen")
end

function scrot_selection()
    scrot("sleep 0.5 && scrot -s " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'", scrot_callback, "Take a screenshot of selection")
end

function scrot_window()
    scrot("scrot -b -u " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'", scrot_callback, "Take a screenshot of focused window")    
end

function scrot(cmd , callback, args)
    awful.util.spawn(cmd)
    callback(args)
end

function scrot_callback(text)
    naughty.notify({
      text = text,
      title = "Screenshot",
      timeout = 1 })
end
