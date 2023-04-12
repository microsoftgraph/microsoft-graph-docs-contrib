---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	availability = "DoNotDisturb"
	activity = "DoNotDisturb"
	expirationDuration = "PT8H"
}

Set-MgUserPresenceUserPreferredPresence -UserId $userId -BodyParameter $params

```