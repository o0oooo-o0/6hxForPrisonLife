
--[[



                                       
  ad8888ba,  88                        
 8P'    "Y8  88                        
d8           88                        
88,dd888bb,  88,dPPYba,   8b,     ,d8  
88P'    `8b  88P'    "8a   `Y8, ,8P'   
88       d8  88       88     )888(     
88a     a8P  88       88   ,d8" "8b,   
 "Y88888P"   88       88  8P'     `Y8  Universal Loader
                                       
                                       



]]

if getgenv().sixhx then return end
getgenv().sixhx = true

loadstring(game:HttpGet(
    game.PlaceId == 155615604 and "https://pandadevelopment.net/virtual/file/77d27da0243246f6"
    or game.PlaceId == 0 and "nil"
    or "https://raw.githubusercontent.com/o0oooo-o0/6hxForPrisonLife/refs/heads/master/unsupported.lua" -- kick if unsupported
))()
