-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/

-----------------
-- PERMISSIONS --
-----------------

require("conf/permissions")

---------------------------
-- ENVIRONMENT VARIABLES --
---------------------------

require("conf/env")

-------------
-- DEVICES --
-------------

require("conf/devices")

--------------------------------------
-- MONITORS, WINDOWS AND WORKSPACES --
--------------------------------------

require("conf/wm")

-------------------
-- LOOK AND FEEL --
-------------------

require("conf/looks")

-----------------
-- KEYBINDINGS --
-----------------

require("conf/binds")

------------------
-- GPU SETTINGS --
------------------

require("conf/gpu")

---------------
-- AUTOSTART --
---------------

require("conf/autostart")

---------------
-- ECOSYSTEM --
---------------

hl.config(
    {
        ecosystem = {
            no_update_news = true,
            no_donation_nag	= true
        }
    }
)