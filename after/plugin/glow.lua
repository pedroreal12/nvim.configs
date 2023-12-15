if jit.os == "Windows" then
    Path = os.getenv("UserProfile") .. "\\AppData\\Local\\Microsoft\\WinGet\\Packages\\charmbracelet.glow_Microsoft.Winget.Source_8wekyb3d8bbwe"
elseif jit.os == "Linux" then
    Path = os.getenv("HOME") .. "/.local/bin"
else
    print("SO not compatible with this neovim config, add your directory in the config/set.lua")
end
require('glow').setup({
    install_path = Path,
    width = 150,
    height = 100,
    width_ratio = 0.7,
    height_ratio = 0.7,
})
