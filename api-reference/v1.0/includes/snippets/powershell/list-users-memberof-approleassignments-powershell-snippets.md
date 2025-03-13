---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

Get-MgUserMemberOfAsGroup -UserId $userId -Filter "appRoleAssignments/`$count gt 0" -Property "id,displayName" 

```