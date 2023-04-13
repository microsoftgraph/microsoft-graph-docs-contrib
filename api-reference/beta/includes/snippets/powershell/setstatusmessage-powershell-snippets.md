---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	statusMessage = @{
		message = @{
			content = "Hey I'm currently in a meeting."
			contentType = "text"
		}
		expiryDateTime = @{
			dateTime = "2022-10-18T17:05:33.2079781"
			timeZone = "Pacific Standard Time"
		}
	}
}

Set-MgUserPresenceStatusMessage -UserId $userId -BodyParameter $params

```