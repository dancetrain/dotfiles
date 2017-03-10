local wibox = require("wibox")
local awful = require("awful")
local io = require("io")
local vicious = require("vicious")
local os = require("os")
local math = require("math")
local beautiful = require("beautiful")

local widgets = {}

-- Net Speed widget
local net = {}
net.widget = wibox.widget.textbox()
vicious.register(net.widget, vicious.widgets.net, '<span color="#CC9393">${enp3s0 down_kb}</span> <span color="#7F9F7F">${enp3s0 up_kb}</span>', 3)

widgets.net = net.widget

-- CPU load widget
local cpubar = wibox.widget {
      ticks = true,      
      forced_width = 100,
      max_value = 100,
      widget = wibox.widget.progressbar,
}
-- cpubar:set_color({ type = "linear", from = { 0, 0 }, to = { 0, 20 }, stops = { { 0, "#3caa3c" }, { 0.5, "#3caa3c" }, { 1, "#cd2727" } }})
-- cpubar:set_background_color(beautiful.bg_systray)
-- cpubar:set_ticks(true)
-- cpubar:set_width(100)
vicious.register(cpubar, vicious.widgets.cpu, "$1", 1)
widgets.cpu = cpubar

return widgets