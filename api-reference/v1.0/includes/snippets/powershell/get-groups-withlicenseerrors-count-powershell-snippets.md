---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

Get-MgGroup -Filter "hasMembersWithLicenseErrors eq true" -Property "id,displayName" 

```