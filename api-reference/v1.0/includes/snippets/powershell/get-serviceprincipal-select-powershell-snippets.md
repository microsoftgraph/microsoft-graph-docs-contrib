---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

Get-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -Property "id,appId,displayName,appRoles,oauth2PermissionScopes,resourceSpecificApplicationPermissions" 

```