---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgServicePrincipal -Property "id,appId,displayName" -Filter "startswith(displayName, 'salesforce')" 

```