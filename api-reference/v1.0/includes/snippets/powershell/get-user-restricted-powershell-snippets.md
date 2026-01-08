---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUser -Filter "isManagementRestricted eq true" -Property "displayName,userPrincipalName" 

```