---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	destinationId = "destinationId-value"
}

# A UPN can also be used as -UserId.
Copy-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```