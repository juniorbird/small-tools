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
	local browser, profile, theBrowser
	set theArgs to argv

	# We have to do the below because we want to be able to pass either 1 or 2 arguments and Applescript is picky
	try
		set theBrowser to item 1 of argv
	on error
		display dialog "You must pass a browser"
	end try

	try
		set profile to item 2 of argv
	on error
		set profile to ""
	end try


	# Wish I had a dictionary of browsernames but I can do a lot of "if"s
	if (theBrowser = "Arc")
		set browser to "browser"
	else if (theBrowser = "Safari")
		set browser to "safari"
	end if

	# Set the browser
	do shell script "defaultbrowser " & browser

	# Auto-click the dialog that the system will show to prevent a browser from stealing default
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
	delay 1
	try
		if (theBrowser is "Arc")
			if (profile is not "")
				tell application "Arc"
					# We're going to assume that "last window" is the most-recently-used window and is the most user-friendly choice
					tell last window
						tell space profile to focus
					end tell
				end tell
			end if
		end if
	end try

end run