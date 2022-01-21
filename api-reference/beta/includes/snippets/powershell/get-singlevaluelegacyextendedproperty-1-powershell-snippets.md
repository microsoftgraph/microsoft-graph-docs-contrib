---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

Get-MgUserMessage -UserId $userId -MessageId $messageId -ExpandProperty "singleValueExtendedProperties(`$filter=id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')" 

```