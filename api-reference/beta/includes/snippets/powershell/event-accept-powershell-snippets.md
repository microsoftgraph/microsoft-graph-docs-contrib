---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	comment = "comment-value"
	sendResponse = $true
}

# A UPN can also be used as -UserId.
Invoke-MgBetaAcceptUserEvent -UserId $userId -EventId $eventId -BodyParameter $params

```