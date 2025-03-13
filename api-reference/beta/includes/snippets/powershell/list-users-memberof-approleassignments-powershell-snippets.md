---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

Get-MgBetaUserMemberOfAsGroup -UserId $userId -Filter "appRoleAssignments/`$count gt 0" -Property "id,displayName" 

```