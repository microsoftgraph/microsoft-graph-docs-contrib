---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	destinationId = "deleteditems"
}

# A UPN can also be used as -UserId.
Move-MgBetaUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```