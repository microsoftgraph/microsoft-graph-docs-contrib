---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

# A UPN can also be used as -UserId.
Get-MgBetaUserAppRoleAssignedResource -UserId $userId -Property "displayName,accountEnabled,servicePrincipalType,signInAudience" 

```