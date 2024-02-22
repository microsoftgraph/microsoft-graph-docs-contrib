---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	statusMessage = @{
		message = @{
			content = "Hey I am available now"
			contentType = "text"
		}
	}
}

Set-MgBetaUserPresenceStatusMessage -UserId $userId -BodyParameter $params

```