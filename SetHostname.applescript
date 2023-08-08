########################################################################
# Set Hostname
#
# Timo Kahle
# 
# Changes
# v0.1 (2013-10-31)
# o Initial version
#
# v1.0 (2014-09-03)
# 0 Minor refactoring of variable names
# o Minor dialog reworks
# o Exchanged application icon
# + Introduced use of Notification Center on 10.9+
#
# v1.1 (2016-06-26)
# o Updated variable names to match common guidelines
# + Added macOS version check (Added min compatible version to 10.9 to support NotificationCenter)
# + Added "ExecCommand" (in contrast to ExecCommandAdmin) to allow reading values w/o admin rights and thus reduce error sources
#  - Removed checks for "NotificationCenterSupported" as due to the changed minimum system requirements we can assume that NC is available (Note: We'll not catch the case where the user forcefully disables NC through defaults-write)
# + Exchanged button texts with variables instead of hard-coding
# - Removed obsolete function "GetOSXVersion()"
# o Changed all sanity checks to not use admin rights to reduce error proneness (exchanged ExecCommandAdmin with ExecCommand)
# o Reduced timeout to 1 minute
#
# v1.2 (2016-07-31)
# o Bugfix: Updated MIN_OS_VERSION to 10.10 to conform with required Notification Center support
#
# v1.2.1 (2016-08-08)
# o Bugfix: For "display notification" the notification text and subtitles where in reverse order
#
# v1.3 (2018-09-24)
# o Updated App icon
# o Increased Min OS Version to 10.13
# o Exchanged macOS with macOS
#
#
# ToDo
# + /
#
#
########################################################################

# Environment variables
property APP_NAME : "Set Hostname"
property APP_VERSION : "1.3"
property APP_ICON : "applet.icns"
property TIMEOUT_SEC : 60 -- 1 minute

# Environment
property MIN_OS_VERSION : "10.13"

# Shell Commands
property CMD_SETHOSTNAME_LOCAL : "scutil --set LocalHostName "
property CMD_GETHOSTNAME_LOCAL : "scutil --get LocalHostName"
property CMD_SETHOSTNAME : "scutil --set HostName "
property CMD_GETHOSTNAME : "scutil --get HostName"
property CMD_SETCOMPUTERNAME : "scutil --set ComputerName "

# Dialog definitions
property DLG_MSG_OS_UNSUPPORTED : "Your current macOS version is not supported. You need at least macOS 10.9 to use this app."
property RETURNVALUE_ERROR : "Error:"
property DLG_TITLE_ERROR : "Error"
property BTN_OK : "OK"
property BTN_CANCEL : "Cancel"
property BTN_APPLY : "Apply"
property BTN_DONE : "Done"
property dlg_Error_SetHostname : "An error occured setting the new Hostname. The Hostname was not changed."
property dlg_Info_CloseSysPref : "The System Preferences pane will be closed to apply the new hostname."
property dlg_Info_EnterHostname : "Enter the new Hostname."
property dlg_Error_ComputerName : "An error occured setting the new Computer Name. The Computer Name was not changed."
property dlg_Info_HostnameSuccess : "Changed Hostnames to: "
property dlg_Error_HostnameFail : "An error occured changing the Hostnames to: "


# Main routine
on run
	# Initialize
	set dlgIcon to (path to resource APP_ICON)
	set dlgTitle to APP_NAME & " (" & APP_VERSION & ")"
	
	# Check minimum supported macOS version
	if IsValidMinOS(MIN_OS_VERSION) is false then
		# Handle non-supported OS
		display dialog DLG_MSG_OS_UNSUPPORTED with title DLG_TITLE_ERROR buttons {BTN_OK} default button {BTN_OK} with icon dlgIcon
		return
	end if
	
	
	# Initialize the hostname and get the currently set hostname
	set theNameNew to ""
	set theHostnameCurrent to ExecCommand(CMD_GETHOSTNAME_LOCAL)
	
	# Get new Hostname from user
	set theAnswer to display dialog dlg_Info_EnterHostname & return & return & dlg_Info_CloseSysPref default answer theHostnameCurrent with title dlgTitle buttons {BTN_CANCEL, BTN_APPLY} default button {BTN_APPLY} with icon dlgIcon cancel button {BTN_CANCEL}
	
	# User selected to apply the changes
	if button returned of theAnswer is BTN_APPLY then
		set theNameNew to (text returned of theAnswer)
		
		# Quit the System Preferences Pane
		QuitSysPrefs()
		
		# Change the local Hostname
		set myResultLocal to ExecCommandAdmin(CMD_SETHOSTNAME_LOCAL & theNameNew)
		# Check for potential errors returned from setting the hostnames
		if myResultLocal contains RETURNVALUE_ERROR then
			display notification myResultLocal as text subtitle dlg_Error_SetHostname with title APP_NAME
			delay 1
		end if
		
		# Change the system Hostname
		set myResult to ExecCommandAdmin(CMD_SETHOSTNAME & theNameNew)
		# Check for potential errors returned from setting the hostnames
		if myResult contains RETURNVALUE_ERROR then
			display notification myResult as text subtitle dlg_Error_SetHostname with title APP_NAME
			delay 1
		end if
		
		# Change the Computer sharing name
		set myResultComputer to ExecCommandAdmin(CMD_SETCOMPUTERNAME & theNameNew)
		# Check for potential errors returned from setting the hostnames
		if myResultComputer contains RETURNVALUE_ERROR then
			display notification myResultComputer as text subtitle dlg_Error_ComputerName with title APP_NAME
			delay 1
		end if
		
		# Finally check if local and systen Hostname were properly changed
		set newLocalHostname to ExecCommand(CMD_GETHOSTNAME_LOCAL)
		set newSystemHostname to ExecCommand(CMD_GETHOSTNAME)
		set newComputerName to ExecCommand(CMD_GETHOSTNAME)
		
		if newLocalHostname is equal to newSystemHostname then
			display notification newLocalHostname as text subtitle dlg_Info_HostnameSuccess with title APP_NAME
			delay 1
		else
			display notification newLocalHostname as text subtitle dlg_Error_HostnameFail with title APP_NAME
			delay 1
		end if
	end if
end run


# Run a command with admin privileges
on ExecCommandAdmin(thisAction)
	
	try
		#Introduce timeout to prevent timing out of large transfers
		with timeout of TIMEOUT_SEC seconds
			set returnValue to do shell script (thisAction & " 2>&1") with administrator privileges
		end timeout
		
		return returnValue
	on error errMsg
		return RETURNVALUE_ERROR & errMsg
	end try
end ExecCommandAdmin


# Run a command without admin privileges
on ExecCommand(thisAction)
	
	try
		#Introduce timeout to prevent timing out of large transfers
		with timeout of TIMEOUT_SEC seconds
			set returnValue to do shell script (thisAction & " 2>&1")
		end timeout
		
		return returnValue
	on error errMsg
		return RETURNVALUE_ERROR & errMsg
	end try
end ExecCommand


# Quit the System Preferences Pane if it is running
on QuitSysPrefs()
	if application "System Settings" is running then
		tell application "System Settings" to quit
	end if
end QuitSysPrefs


# Check if minimum required macOS version is running
on IsValidMinOS(minVersion)
	set strOSXVersion to system version of (system info)
	considering numeric strings
		set IsSupportedMinOS to strOSXVersion is greater than or equal to MIN_OS_VERSION
	end considering
	
	return IsSupportedMinOS
end IsValidMinOS