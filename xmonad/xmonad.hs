import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myBar = "xmobar"

myPP = xmobarPP

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = defaultConfig { terminal = "gnome-terminal" }
        `removeKeysP` ["M-S-j", "M-S-r"]

