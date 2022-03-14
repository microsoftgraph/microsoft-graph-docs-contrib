---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

# A UPN can also be used as -UserId.
Get-MgUserMessage -UserId $userId -Filter "Extensions/any(f:f/id eq 'Com.Contoso.Referral')" -ExpandProperty "Extensions(`$filter=id eq 'Com.Contoso.Referral')" 

```