---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	StatusMessage = @{
		Message = @{
			Content = "Hey I am available now"
			ContentType = "text"
		}
	}
}

Set-MgUserPresenceStatusMessage -UserId $userId -BodyParameter $params

```