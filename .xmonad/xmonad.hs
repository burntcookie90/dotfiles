--
-- xmonad example config file.
--
-- A template showing all available configuration hooks,
-- and how to override the defaults in your own xmonad.hs conf file.
--
-- Normally, you'd only override those defaults you care about.
--

import XMonad
import Data.Monoid

import System.Exit

import XMonad.Util.Dzen

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.SetWMName

import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace
import XMonad.Layout.Spiral
import XMonad.Layout.Tabbed
import XMonad.Layout.MultiToggle
import XMonad.Layout.MultiToggle.Instances
import XMonad.Layout.Grid
import XMonad.Layout.IM
import XMonad.Layout.Reflect
import XMonad.Layout.ShowWName
import Data.Ratio((%))

import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.Window
import XMonad.Prompt.XMonad
import XMonad.Prompt.AppendFile

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import Data.Map (fromList)
import Data.Monoid (mappend)

import XMonad.Actions.CycleWS

-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
{-myTerminal      = "terminator -p mydefaults"-}
myTerminal = "xfce4-terminal"

-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Width of the window border in pixels.
--
myBorderWidth   = 1

-- modMask lets you specify which modkey you want to use. The default
-- is mod1Mask ("left alt").  You may also consider using mod3Mask
-- ("right alt"), which does not conflict with emacs keybindings. The
-- "windows key" is usually mod4Mask.
--
myModMask       = mod1Mask


-- Define layout for specific workspaces  
nobordersLayout = noBorders $ Full 

imLayout = withIM pidginRatio pidginRoster $
               reflectHoriz $
               withIM skypeRatio skypeRoster
               (Grid ||| Full ||| simpleTabbed)
               where
                   pidginRatio = (1%7)
                   skypeRatio = (1%6)
                   pidginRoster = And (ClassName "Pidgin") (Role "buddy_list")
                   --This doesn't quite work with the latest version of Skype,
                   --so a new conversation/call may snap to the right and push
                   --the buddy list into the center tiled area
                   skypeRoster = (ClassName "Skype") `And` (Not (Title "Options")) `And` (Not (Role "ConversationsWindow")) `And` (Not (Role "CallWindow"))

nobordersOrStrutsLayout = avoidStruts ( nobordersLayout )


-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
-- Put all layouts together  
myLayout = onWorkspace "8:chat" imLayout $ onWorkspace "9:media" nobordersOrStrutsLayout $ defaultLayout

myWorkspaces    = ["1:dev","2:devweb","3:vcs","4:web","5:vm","6","7","8:chat","9:media"]

-- Border colors for unfocused and focused windows, respectively.
--
myNormalBorderColor  = "#dddddd"
myFocusedBorderColor = "#33B5E5"


------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- launch dmenu
    , ((modm,               xK_p     ), spawn "dmenu_run.pl -fn \"-*-roboto light-*-r-*-*-*-*-*-*-*-*-*-*\"")

    -- launch gmrun
    {-, ((modm .|. shiftMask, xK_p     ), spawn "gmrun")-}

    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)

     -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modm,               xK_r     ), refresh)

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)

    -- Move focus to the previous window
    , ((modm .|. shiftMask, xK_Tab   ), windows W.focusUp)

    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)

    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )

    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )

    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)

    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )

    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)

    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)

    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))

	{-[>-- mute volume<]-}
	,((0              , 0x1008ff12), spawn "amixer set Master toggle") 
	{-[>-- lower volume<]-}
	,((0              , 0x1008ff11), spawn "~/dotfiles/decrease_volume.sh" )

	{-[>--raise volume]-}
	,((0              , 0x1008ff13), spawn "~/dotfiles/increase_volume.sh")

	-- decrease brightness
	,((0 			, 0x1008ff03), spawn "~/dotfiles/decrease_backlight.sh")
	
	--inc brightnss
	,((0 			, 0x1008ff02), spawn "~/dotfiles/increase_backlight.sh")

	--take screenshot
    , ((0              , 0xff61), spawn "scrot -s")

	--lock computer
	, ((modm .|. shiftMask, xK_l), spawn "~/dotfiles/lock.sh")


	--toggle touchpad
	, ((0 			, 0x1008ff4a), spawn "~/dotfiles/touchpad_toggle.sh")

	-- nuvola previous
	, ((0 			, 0x1008ff16), spawn "nuvolaplayer-client prev")

	-- nuvola toggle 
	, ((0 			, 0x1008ff14), spawn "nuvolaplayer-client toggle")

	-- nuvola next
	, ((0 			, 0x1008ff17), spawn "nuvolaplayer-client next")
	
	--go to window
	, ((modm .|. shiftMask, xK_f 	), windowPromptGoto defaultXPConfig {autoComplete = Just 50000} )
	
	--append to notes
	, ((modm .|. shiftMask, xK_n), do 
			spawn ("date>>"++"/home/vishnu/Dropbox/NOTES") 
			appendFilePrompt defaultXPConfig "/home/vishnu/Dropbox/NOTES"
		)

	{---toggle left rotate-}
	{-, ((modm .|. shiftMask, xK_h), spawn "xrandr -o left")-}

	{---toggle right rotate-}
	{-, ((modm .|. shiftMask, xK_l), spawn "xrandr -o right")-}
	
	{---togle normal rotate-}
	{-, ((modm .|. shiftMask, xK_n), spawn "xrandr -o normal")-}
	
	--open thunar
	{-, ((0xffeb .|. 		, xK_e), spawn "thunar")-}

    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
	, ((modm              , xK_b     ), sendMessage ToggleStruts)

    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))

    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    ]
    ++

    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]


------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster)),

	((modm, button4), const (prevWS)),

	((modm, button5), const (nextWS))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- %Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--
defaultLayout = tiled ||| GridRatio (4/3) ||| Mirror tiled ||| Full
  where
     -- default tiling algorithm partitions the screen into two panes
     tiled   = Tall nmaster delta ratio

     -- The default number of windows in the master pane
     nmaster = 1

     -- Default proportion of screen occupied by master pane
     ratio   = 1/2

     -- Percent of screen to increment by when resizing panes
     delta   = 1/100

------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
--	, className =? "Vlc"            --> doFloat
    , className =? "Gimp"           --> doFloat
	, className =? "Orage"          --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore 
	, className =? "Vlc" 			--> doShift "9:media"
	, className =? "Spotify"		--> doShift "9:media"
	, className =? "nuvolaplayer"   --> doShift "9:media"
	, className =? "Skype" 			--> doFloat
	, className =? "Pidgin" 		--> doShift "8:chat"
	, className =? "Transmission-gtk" --> doShift "8:chat"
	, className =? "jetbrains-idea-ce" --> doShift "1:dev"
	, className =? "SmartGit/Hg" --> doShift "3:vcs"
	, className =? "player" --> doShift "5:vm"
	, className =? "Eclipse" 		--> doShift "1:dev"
	, className =? "jetbrains-studio"	--> doShift "1:dev"
	, className =? "crx_knipolnnllmklapflnccelgolnpehhpl"	--> doFloat
	, title 	=? "NixNote" 		--> doShift "7"
	]

------------------------------------------------------------------------
-- Event handling

-- * EwmhDesktops users should change this to ewmhDesktopsEventHook
--
-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
myEventHook = fullscreenEventHook

------------------------------------------------------------------------
-- Status bars and logging

-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
myLogHook = return ()

------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.
myStartupHook = setWMName "LG3D"

------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.

-- Run xmonad with the settings you specify. No need to modify this.
--
main = xmonad=<<xmobar defaults

-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults = defaultConfig {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayout,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }
