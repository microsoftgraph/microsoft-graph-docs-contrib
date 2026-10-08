---
title: "Set up authentication for Tenant Configuration Management APIs"
description: "Learn how to authenticate to the Tenant Configuration Management (TCM) APIs and configure the TCM service principal."
author: "NikCharlebois"
ms.date: 03/23/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
---

# Set up authentication for Tenant Configuration Management APIs

Learn how to authenticate to the Tenant Configuration Management (TCM) APIs and configure the TCM service principal for your organization.

## Authentication

Two levels of authentication are required when you work with TCM APIs:

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

When a monitor executes, it impersonates the TCM-specified principal. The TCM solution exposes an official service principal named **Tenant Configuration Management** with the following application ID:

```
03b07b79-c5bc-4b5e-9bfa-13acf4a99998
```

> [!NOTE]
> Customers should ensure that the **M365 Admin Services** service principal with **appId** `6b91db1b-f05b-405a-a0b2-e3f60b28d645` is also provisioned in their tenant. If it doesn't exist, you can [provision it manually](/graph/api/serviceprincipal-post-serviceprincipals).

## Set up the TCM service principal

During public preview, organizations must add the TCM service principal to their tenant and grant it the required permissions.

### Add the TCM service principal to a tenant

You can use the following options when you add the TCM service principal to a tenant.

#### Option 1: Use PowerShell

1. Install the required modules:

   ```powershell
   Install-Module Microsoft.Graph.Authentication
   Install-Module Microsoft.Graph.Applications
   ```

2. Connect to Microsoft Graph:

   ```powershell
   Connect-MgGraph -Scopes @('Application.ReadWrite.All', 'AppRoleAssignment.ReadWrite.All')
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

### Grant permissions to the TCM service principal

After adding the TCM service principal to your tenant, you must grant it the necessary permissions to access the workload endpoints.

#### Option 1: Use PowerShell

The following example script grants the `User.ReadWrite.All` and `Policy.Read.All` permissions to the TCM service principal:

```powershell
$permissions = @('User.ReadWrite.All', 'Policy.Read.All')
$Graph = Get-MgServicePrincipal -Filter "AppId eq '00000003-0000-0000-c000-000000000000'"
$TCM = Get-MgServicePrincipal -Filter "AppId eq '03b07b79-c5bc-4b5e-9bfa-13acf4a99998'"

foreach ($requestedPermission in $permissions) {
    $AppRole = $Graph.AppRoles | Where-Object { $_.Value -eq $requestedPermission }
    $body = @{
        AppRoleId = $AppRole.Id
        ResourceId = $Graph.Id
        PrincipalId = $TCM.Id
    }
    New-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $TCM.Id -BodyParameter $body
}
```

For Exchange Online permissions, see [Application access policies in Exchange Online](/exchange/permissions-exo/application-rbac).

#### Option 2: Use Microsoft Graph API

Assign app roles to the TCM service principal:

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals(appId='03b07b79-c5bc-4b5e-9bfa-13acf4a99998')/appRoleAssignedTo
Content-Type: application/json

{
  "appRoleId": "246dd0d5-5bd0-4def-940b-0421030a5b68",
  "resourceId": "<Microsoft Graph service principal ID>",
  "principalId": "<TCM service principal ID>"
}
```

Replace the placeholder values:
- `<Microsoft Graph service principal ID>`: The object ID of the Microsoft Graph service principal in your tenant.
- `<TCM service principal ID>`: The object ID of the TCM service principal in your tenant.

## Related content

- [Overview of the Tenant Configuration Management APIs](/graph/unified-tenant-configuration-management-concept-overview)
- [Tenant Configuration Management API overview](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true)
