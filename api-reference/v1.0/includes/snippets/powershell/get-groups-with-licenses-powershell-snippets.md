---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroup -Property "id,assignedLicenses" -Filter "assignedLicenses/any()" -ExpandProperty "members(`$select=id,displayName)" 

```