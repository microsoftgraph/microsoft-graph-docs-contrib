---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

Get-MgBetaGroup -Property "id,assignedLicenses" -Filter "assignedLicenses/any()" -ExpandProperty "members(`$select=id,displayName)" 

```