

Set WshShell = WScript.CreateObject("WScript.Shell")
webname = InputBox("Website Name: ")
username = InputBox("User Name: ")
email = InputBox("Email: ")
password = InputBox("Password: ")

WshShell.Run "Notepad"
WshShell.AppActivate "Notepad"

WScript.Sleep 1000


WshShell.SendKeys "Website Name: "
WshShell.SendKeys webname
WshShell.SendKeys "{ENTER}"
If webname = "" Then WshShell.SendKeys "{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}"


WshShell.SendKeys "User Name: "
WshShell.SendKeys username
WshShell.SendKeys "{ENTER}"
If username = "" Then WshShell.SendKeys "{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}"


WshShell.SendKeys "Email: "
WshShell.SendKeys email
WshShell.SendKeys "{ENTER}"
If email = "" Then WshShell.SendKeys "{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}"

WshShell.SendKeys "Password: "
WshShell.SendKeys password
If password = "" Then WshShell.SendKeys "{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}{BS}"
WshShell.SendKeys "^S"


WScript.Sleep 10000
WshShell.SendKeys "{ENTER}"

msgbox("Your account is saved in a notepad file. Have a nice Day! :)")