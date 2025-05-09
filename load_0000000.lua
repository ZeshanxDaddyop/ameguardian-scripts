-- Simple security check to prevent script from running on unauthorized GG
local function checkGG()
  local ggPackage = gg.getFile() -- Returns the GG binary path (e.g. /data/data/com.xxxxx.xxx)
  if not ggPackage:find("com.vwrwrtyuhkboeccclku") then
    gg.alert("Unauthorized GG detected.\nScript will now exit.")
    os.exit()
  end
end

checkGG()

-- Your actual script starts below
gg.alert("Verified GG. Running script...")
-- Add the rest of your script logic here
gg.toast("💖Script by ꔹ ᴹʳ〲Ɗᴀʀk ꔹ")

function HOME()
  Z = gg.multiChoice({
    "1• Bite effect",
    "Exit"
  }, nil, "💝Hack Menu💝")
  if Z == nil then return end 
  if Z[1] then a1() end
  if Z[2] then EXIT() end 
  PUBGMH = -1
end

function a1()
  local function cloningSkin(value, dataType, setUp)
    gg.searchNumber(value, dataType)
    local r = gg.getResults(10)
    if #r == 0 then
      gg.toast('❌ Skin tag not found.')
      return
    end
    for i = 1, #r do
      gg.addListItems({
        {address = r[i].address + 0x1A, flags = 2},
        {address = r[i].address + 0x22, flags = 2}
      })
    end
    gg.loadResults(gg.getListItems())
    gg.refineNumber('199~65000;199~65000:9', 2)
    gg.getResults(2)
    gg.editAll(setUp .. 'x6', 2)
  end

  gg.setRanges(32)
  gg.clearResults()
  local v = gg.prompt({"Enter Skin Tag [1; 150]"}, {}, {"number"})
  if v == nil then return end
  cloningSkin('5014873251545874432', 32, v[1])
  gg.toast('✅ Skin set to ' .. v[1])
  gg.clearResults()
  gg.clearList()
end

function EXIT()
  print("💖 Script by MrDark 💖\nBye, have a nice day!")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  if PUBGMH == 1 then HOME() end
end