local allowed_package = "com.ugzxkc"
local current_package = gg.getTargetPackage()

if current_package ~= allowed_package then
    gg.alert("This script is protected and cannot be used with this app.")
    os.exit()
end

-- Script starts if the package matches
gg.alert("Welcome! Script activated for " .. allowed_package)
function HOME()
    menu = gg.multiChoice({
        "🔌ᴀᴄᴛɪᴠᴇᴛᴏʀ",
                "𝙴𝚡𝚒𝚝"
    }, nil, "\n                ◻️◽▫️ᴢᴇsʜᴀɴ🇽 ᴠɪᴘ ᴠ.1.1 ▫️◽◻️\n                            ◼️◾▪️ тɦε ωσℓƒ ▪️◾◼️\n                     🔔 100% Aᶰᵗᶤᵇᵃᶰ ᵃᶰᵈ ᶰᵒʳᵐᵃˡ ˢᵉʳᵛᵉʳ🛡️")

    if menu == nil then return end 

    if menu[1] then hack1() end
        if menu[2] then
        gg.setVisible(true)
        os.exit()
    end
end

function hack1()
gg.toast("🔸🔸🔶🔶🇨 🇵  🇨 🇭 🇦 🇳 🇬 🇪 🇩🔶🔶🔸🔸")
  end

while true do
if gg.isVisible() then
gg.setVisible(false)
HOME()
end
end
