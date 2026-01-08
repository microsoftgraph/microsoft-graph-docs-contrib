---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	moveToInbox = $true
}

# A UPN can also be used as -UserId.
Invoke-MgBetaMarkUserMessageAsNotJunk -UserId $userId -MessageId $messageId -BodyParameter $params

```