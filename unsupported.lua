local g5 = game:GetService("Players")
local x2 = g5.LocalPlayer

local function a8()
	local b2 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	local dx = ""

	for i = 1, 5 do
		local r = math.random(1, #b2)
		dx = dx .. b2:sub(r, r)
	end

	return dx
end

x2:Kick("[" .. a8() .. "] Unsupported game!")
--[[

6hx unsupported game for loader

]]
