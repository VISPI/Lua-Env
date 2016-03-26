#!/usr/bin/env lua

--[[
# Author: Neel Kowdley <nkowdley@gmail.com>
# Environment Generator
# Date: 03/25/2016
# File: lua-env.lua
--]]

--Globals
ROWSIZE = 2
COLSIZE = 2
MAXVALUE = 5
grid = {}

function print_grid (grid)
    for i = 0, ROWSIZE-1, 1 do
        for j = 0, COLSIZE-1, 1 do
            local str = " "..grid[i][j]
            io.write(str)
        end
        io.write("\n")
    end
end

local rows = math.random(1,ROWSIZE)
local cols = math.random(1,COLSIZE)

for i = 0, ROWSIZE-1, 1  do
  grid[i] = {} --create the row
  for j = 0, COLSIZE-1, 1 do
     grid[i][j] = math.random(1,MAXVALUE)
  end
end
print_grid(grid)
