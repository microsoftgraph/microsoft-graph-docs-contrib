---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	Comment = "Cancelling for this week due to all hands"
}

# A UPN can also be used as -UserId.
Stop-MgUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

```