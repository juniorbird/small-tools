(*
	Does 3 things:
	1. Sets the default browser
	2. Auto-clicks the "Do you want to change your default web browser..." dialog
	3.
		a. If the browser is Arc ("browser"), select the Space that you want
		b. TODO: if the browser is Firefox, select the Profile that you want


	Run this like `osascript set-browser.scpt Arc Work
*)
on run argv
	set theBrowser to "Arc"
	-- set theBrowser to "Safari"
	set theProfile to "Posting"
	global browser, profile

	try
		set testProfile to theProfile
	end try

	-- set theBrowser to item 1 of argv

	-- try
	-- 	set theProfile to item 2 of argv
	-- end try



	# Wish I had a dictionary of browsernames but I can do a lot of "if"s
	if (theBrowser = "Arc")
		set browser to "browser"
	else if (theBrowser = "Safari")
		set browser to "safari"
	end if

	if (theProfile is not "")
		set profile to theProfile
	end if

	# Set the browser
	if (profile is "")
		display dialog browser
		do shell script "defaultbrowser" & " " & browser
	else
		display dialog browser & " " & profile
		do shell script "defaultbrowser" & " " & browser
	end if

	# Auto-click the dialog that the system will show to prevent a browser from stealing default
	delay 1
	try
		tell application "System Events"
			tell application process "CoreServicesUIAgent"
				tell window 1
					tell (first button whose name starts with "use")
						perform action "AXPress"
					end tell
				end tell
			end tell
		end tell
	end try

	# Now, if the browser is Arc, and you passed a profile, switch to that profile
	delay 2
	if (theBrowser is "Arc")
		if (profile is not "")
			tell application "Arc"
				tell front window
					tell space profile to focus
				end tell
			end tell
		end if
	end if
end run