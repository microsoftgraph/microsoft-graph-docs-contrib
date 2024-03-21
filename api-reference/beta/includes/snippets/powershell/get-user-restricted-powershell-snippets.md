---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUser -Filter "isManagementRestricted eq true" -Property "displayName,userPrincipalName" 

```