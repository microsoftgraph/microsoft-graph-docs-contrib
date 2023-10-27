---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	comment = "I will probably be able to make it."
	sendResponse = $true
}

# A UPN can also be used as -UserId.
Invoke-MgAcceptUserEventTentatively -UserId $userId -EventId $eventId -BodyParameter $params

```