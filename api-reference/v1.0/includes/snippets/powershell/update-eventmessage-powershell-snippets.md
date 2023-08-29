---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	isRead = $true
}

# A UPN can also be used as -UserId.
Update-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```