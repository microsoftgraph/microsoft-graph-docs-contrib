---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	sessionId = "22553876-f5ab-4529-bffb-cfe50aa89f87"
	availability = "Available"
	activity = "Available"
	expirationDuration = "PT1H"
}

Set-MgUserPresence -UserId $userId -BodyParameter $params

```