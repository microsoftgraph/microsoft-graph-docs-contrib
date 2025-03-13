---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	destinationId = "deleteditems"
}

# A UPN can also be used as -UserId.
Move-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```