---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	IsRead = $true
}

Update-MgUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```