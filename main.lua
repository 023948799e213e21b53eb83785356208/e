--Start Clock
local start = os.clock()
print("Started the obfuscation procedure, this may take longer for large scripts and or low-end pcs.")


local version = "0.0.6"

--Reading the script
local script = io.open('input.lua','r'):read("*all")

--Adding credit protection
script = [[

if getfenv()['_obfuscated_by_overrideobfuscator'] == nil then return error('give me some credit, damn (Case: 1)') end if getfenv()["_OVERRIDE_"] == nil then return error('give me some credit, damn (Case: 3)') end

local override = {}

function override.get_version() 
  return '0.0.6'
end

function override.get_author() 
  return 'Avian#9893'
end

function override.get_discord()
  return 'discord.gg/XfE9UPzV5S'
end

function override.print(msg)
  print('[OVERRIDE PRINT]: '..msg)
end

function override.get_message()
  return 'Thank you for using Override! This honestly means a lot <3'
end

]]..script



--Random Variable Name Generator (Example: IlIlllII)
function random_name(length) 
  local s = ''
  for i=1,length do
    if math.random(1,2) == 1 then
      s=s.."I"
    else
      s=s.."l"
    end
  end
  return s
end



--Turns bytes into a slightly protected string
function make_byte_representation(b)
  local a = ''
    local random = math.random(1000,10000)
    local ascii = math.random(65,90)
    a = a.."getfenv()["..to_bytes('string').."]["..to_bytes('byte').."]".."(\""..string.char(ascii).."\")+0x"..string.format("%x",b*random).."/0x"..string.format("%x",random)..'-0x'..string.format("%x",ascii)
  
  return a
end

--Make a string of bytes (example: \255\255\255\255)
function to_bytes(word)
  local s = '"'
    
  for i = 1,#word do
    s=s.."\\"..string.byte(string.sub(word,i,i))
  end
  
  return s.."\""
end

--Random variable names
local random_unpack = random_name(100)
local random_s = random_name(100)
local random_f = random_name(100)
local random_t = random_name(100)
local random_i = random_name(100)
local random_ls = random_name(100)
local random_v = random_name(100)

--Starting script
local newscript = "_obfuscated_by_overrideobfuscator='discord.gg/XfE9UPzV5S';_indev_version=\"0.0.6\";return (function() function "..random_unpack.."("..random_t..") "..random_s.." = '' for "..random_i..","..random_v.." in pairs("..random_t..") do  "..random_s.." = "..random_s.."..getfenv()["..to_bytes("string").."]["..to_bytes("char").."]("..random_v..") end return ".."getfenv()["..to_bytes(random_s).."] end; "..random_f.." = {"

newscript = "_OVERRIDE_=[["..[[

  ____                            _      _                       
 / __ \                          (_)    | |                   
| |  | |__   __  ___  _ __  _ __  _   __| |  ___ 
| |  | |\ \ / / / _ \| '__|| '__|| | / _` | / _ \
| |__| | \ V / |  __/| |   | |   | || (_| ||  __/
 \____/   \_/   \___||_|   |_|   |_| \__,_| \___| 
            VERSION ]]..version..[[

            Open Source Project
            By: Avian#9893, also known as the Avian's Account Generator developer
            Discord: discord.gg/XfE9UPzV5S
            (Developers Copy)
                                                                                                                                                             
]].."]]\n"..newscript

--Loop through the script and add meme strings + byte representation
for i = 1,#script do
  local f = i
  i = string.sub(script,i,i)
  local random = math.random(1000,10000)
  local strings = {
    "Avian#9893 was here",
    "haha this is fune mem str",
    "print(\"Hello World!\")",
    "nigerian uncle",
    "omg bruh boy what the hell boy",
    "discord.gg/XfE9UPzV5S",
    "for i=1,99999999999999999*math.huge*math.huge do print(i) end",
    "while true do end",
    "jewish fag",
    "local script = \"print(\"Hello World!\")",
    "omg omg mom e!1 look!! its open source!",
    "This file was obfuscated using IronBrew",
    "fuck tyrone",
    "this script was stolen by jamal",
    "i just wanna smash gimme that ass",
    "imma show you what this 13 inch do",
    "your script is being leaked...5%...10%...",
    "you fucked up tyrone..fuck tyrone",
    "أوه القرف لا يمكن تجاوزه على القمة",
    "ебать Тайрона",
    "you get NO BITCHES (jk you use override so 😘)",
    "bbw season",
    "no way?? the source code is leaked? no wayyy",
    "peepee big",
    "i love gay furry porn uwu",
    "you fell for a rat on github and i stole ur bobux ez ez ez",
    "creper awwww man 😎",
    "😈😈😈",
    "labguy94 was here",
    "buzzanut in yo mothers butt",
    "This file was obfuscated using Ironbrew2 fork made by Avian. Please do not hate us we just forked ib!! 😭😭😭",
    "If you want to deobfuscate. Just type loadstring = print on top works 2029!!",
    "listen to Kslv Nov's song, Override, idk its just a random suggestion",
    "our obfuscator may suck, but atleast we solo volatile",
    "SquidSaysNo scammed 10k Robux...sad bro",
    "In case of an investigation by any federal entity or similar, I do not have any involvement with this group.",
    "loadstring(script)()",
    "i have ur ip address",
    "im in your house bejamin",
    "Kill yourself...pretty please 🥺? If you would be so kind? 🥺🥺 I'll be quite sad if you don't… 😔😔😔 Could you perhaps drink… a small amount of bleach?😳 Possibly, hang yourself… pretty please? Maybe shoot yourself? 🥺 Please? With a cherry on top? 😢😢",
    "can i get a lean with ice",
    "The Hog Rider card is unlocked from the Spell Valley (Arena 5)",
    "eirc markman"
  }


  newscript=newscript..make_byte_representation(i:byte()).."--[["..strings[math.random(1,#strings)].."]]"
  if f ~= #script then
    newscript=newscript..","
  end
end


--Ending script
newscript = newscript.."}; if getfenv()["..to_bytes('loadstring').."] == getfenv()["..to_bytes('print').. "] then return end if getfenv()["..to_bytes('loadstring').."] == getfenv()["..to_bytes("warn").."]".." then return end if getfenv()["..to_bytes('loadstring').."] == getfenv()["..to_bytes("error").."] then return end return getfenv()['\\108\\111\\97\\100\\115\\116\\114\\105\\110\\103'](getfenv()["..to_bytes(random_unpack).."]("..random_f..")) end)()()\n"

--Editing the output file
io.open('output.lua',"w+"):write(newscript):close()

--Ending Clock and Printing Time
local done = os.clock()
print("Finished in "..done-start.." seconds.\nThank you for using Override! (Discord: discord.gg/XfE9UPzV5S)")
if done > 60 then
  print("This took longer than usual! Please report this to Avian#9893 on Discord (or the offical server: discord.gg/XfE9UPzV5S)")
end
