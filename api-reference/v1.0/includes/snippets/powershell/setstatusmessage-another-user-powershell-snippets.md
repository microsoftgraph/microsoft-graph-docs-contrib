---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	statusMessage = @{
		message = @{
			content = "Hey I am available now"
			contentType = "text"
		}
	}
}

Set-MgUserPresenceStatusMessage -UserId $userId -BodyParameter $params

```