---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	Comment = "Cancelling for this week due to all hands"
}

# A UPN can also be used as -UserId.
Stop-MgBetaUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

```