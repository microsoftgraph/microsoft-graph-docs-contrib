---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	availability = "DoNotDisturb"
	activity = "DoNotDisturb"
	expirationDuration = "PT8H"
}

Set-MgUserPresenceUserPreferredPresence -UserId $userId -BodyParameter $params

```