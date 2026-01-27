---
title: "Set up authentication for unified tenant configuration management APIs"
description: "Learn how to authenticate and configure the unified tenant configuration management service principal in Microsoft Graph."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
---

# Set up authentication for unified tenant configuration management APIs

Learn how to authenticate to the unified tenant configuration management (UTCM) APIs and configure the UTCM service principal for your organization.

## Authentication

Two levels of authentication are required when you work with UTCM APIs:

1. **Authenticate to Microsoft Graph** with a principal that has the right permission to manage monitors and run snapshots.
2. **Configure authentication for monitors** to determine what authentication method monitors use to impersonate calls to the various workload endpoints or to run a snapshot job.

### Authenticate to Microsoft Graph

To manage monitors or initiate a snapshot job, you must first obtain an access token to Microsoft Graph by authenticating with either a user's credentials (user-delegated flow) or a service principal. The following table summarizes the required permissions:

| Scenario | User delegated | Service principal |
|---|---|---|
| Monitor management | Any privileged role* | ConfigurationMonitoring.Read.All or ConfigurationMonitoring.ReadWrite.All |
| Snapshots | Any privileged role* | ConfigurationMonitoring.ReadWrite.All |

\* For a complete list of privileged roles, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference).

### Authentication to run a monitor

When a monitor executes, it impersonates the UTCM-specified principal. The UTCM solution exposes an official service principal named **Unified Tenant Configuration Management** with the following application ID:

```
03b07b79-c5bc-4b5e-9bfa-13acf4a99998
```

## Set up the UTCM service principal

During public preview, organizations must add the UTCM service principal to their tenant and grant it the required permissions.

### Add the UTCM service principal to a tenant

You can use the following options when you add the UTCM service principal to a tenant.

#### Option 1: Use PowerShell

1. Install the required modules:

   ```powershell
   Install-Module Microsoft.Graph.Authentication
   Install-Module Microsoft.Graph.Applications
   ```

2. Connect to Microsoft Graph:

   ```powershell
   Connect-MgGraph -Scopes 'Application.ReadWrite.All'
   ```

3. Create the service principal:

   ```powershell
   New-MgServicePrincipal -AppId '03b07b79-c5bc-4b5e-9bfa-13acf4a99998'
   ```

#### Option 2: Use the Microsoft Graph API

Make the following request to create the service principal:

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-Type: application/json

{
  "appId": "03b07b79-c5bc-4b5e-9bfa-13acf4a99998"
}
```

### Grant permissions to the UTCM service principal

After adding the UTCM service principal to your tenant, you must grant it the necessary permissions to access the workload endpoints.

#### Option 1: Use PowerShell

The following example script grants the `User.ReadWrite.All` and `Policy.Read.All` permissions to the UTCM service principal:

```powershell
$permissions = @('User.ReadWrite.All', 'Policy.Read.All')
$Graph = Get-MgServicePrincipal -Filter "AppId eq '00000003-0000-0000-c000-000000000000'"
$UTCM = Get-MgServicePrincipal -Filter "AppId eq '03b07b79-c5bc-4b5e-9bfa-13acf4a99998'"

foreach ($requestedPermission in $permissions) {
    $AppRole = $Graph.AppRoles | Where-Object { $_.Value -eq $requestedPermission }
    $body = @{
        AppRoleId = $AppRole.Id
        ResourceId = $Graph.Id
        PrincipalId = $UTCM.Id
    }
    New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $UTCM.Id -BodyParameter $body
}
```

For Exchange Online permissions, see [Application access policies in Exchange Online](/exchange/permissions-exo/application-rbac).

#### Option 2: Use Microsoft Graph API

Assign app roles to the UTCM service principal:

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals(appId='03b07b79-c5bc-4b5e-9bfa-13acf4a99998')/appRoleAssignedTo
Content-Type: application/json

{
  "appRoleId": "246dd0d5-5bd0-4def-940b-0421030a5b68",
  "resourceId": "<Microsoft Graph service principal ID>",
  "principalId": "<UTCM service principal ID>"
}
```

Replace the placeholder values:
- `<Microsoft Graph service principal ID>`: The object ID of the Microsoft Graph service principal in your tenant.
- `<UTCM service principal ID>`: The object ID of the UTCM service principal in your tenant.

## Related content

- [Overview of the unified tenant configuration management APIs](/graph/unified-tenant-configuration-management-concept-overview)
- [Supported workloads and resource types](/graph/utcm-supported-resourcetypes)
- [Unified tenant configuration management API overview](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true)
