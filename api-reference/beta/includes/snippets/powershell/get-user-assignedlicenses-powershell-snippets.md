---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Property "id,mail,assignedLicenses" -Filter "assignedLicenses/any(u:u/skuId eq cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46)" 

```