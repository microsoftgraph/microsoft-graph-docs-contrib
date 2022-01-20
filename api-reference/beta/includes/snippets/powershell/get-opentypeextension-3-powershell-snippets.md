---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

Get-MgUserMessage -UserId $userId -MessageId $messageId -ExpandProperty "extensions(`$filter=id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')" 

```