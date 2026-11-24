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

1. **Authenticate to Microsoft Graph** with a principal that has the right permission for the operation.
2. **Configure authentication for the workload** so that TCM can call the workload endpoints to run a monitor or snapshot job. For remediation and `applyOnce`, also configure [delegated workload permissions and user roles](#set-up-permissions-for-remediation-and-applyonce-preview).

### Authenticate to Microsoft Graph

To manage monitors or initiate a snapshot job, you must first obtain an access token to Microsoft Graph by authenticating with either a user's credentials (user-delegated flow) or a service principal. The following table summarizes the required permissions:

| Scenario | User delegated | Service principal |
|---|---|---|
| List or get monitors | ConfigurationMonitoring.Read.All or ConfigurationMonitoring.ReadWrite.All | ConfigurationMonitoring.Read.All or ConfigurationMonitoring.ReadWrite.All |
| Create or update monitorOnly monitors; delete monitors | ConfigurationMonitoring.ReadWrite.All | ConfigurationMonitoring.ReadWrite.All |
| Snapshots | ConfigurationMonitoring.ReadWrite.All | ConfigurationMonitoring.ReadWrite.All |
| Configuration template writes (preview) | ConfigurationMonitoring.ReadWrite.All | ConfigurationMonitoring.ReadWrite.All |
| Drift remediation and applyOnce monitors (preview) | ConfigurationMonitoring.ReadWrite.All and the workload role for each resource. See [Set up permissions for remediation and applyOnce (preview)](#set-up-permissions-for-remediation-and-applyonce-preview). | Not supported |

The permissions in this table belong to the calling app. For remediation and `applyOnce`, the signed-in user also needs the resource-specific role described later in this article.

### Authentication to run a monitor

When a monitor in `monitorOnly` mode executes, it impersonates the TCM-specified principal. The TCM solution exposes an official service principal named **Tenant Configuration Management** with the following application ID:

```
03b07b79-c5bc-4b5e-9bfa-13acf4a99998
```

> [!NOTE]
> Customers should ensure that the **M365 Admin Services** service principal with **appId** `6b91db1b-f05b-405a-a0b2-e3f60b28d645` is also provisioned in their tenant. If it doesn't exist, you can [provision it manually](/graph/api/serviceprincipal-post-serviceprincipals).

## Set up the TCM service principal

Organizations must add the TCM service principal to their tenant and grant it the required permissions.

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

After adding the TCM service principal to your tenant, you must grant it the necessary permissions to access the workload endpoints. The following application permission examples apply to monitoring and snapshots. For remediation and `applyOnce`, see [Set up permissions for remediation and applyOnce (preview)](#set-up-permissions-for-remediation-and-applyonce-preview).

For the [Copilot resources (preview)](utcm-copilot-resources.md) and [Agent resources (preview)](utcm-agent-resources.md), grant the TCM service principal the `CopilotPolicySettings.Read` **application** permission on Microsoft Graph for monitoring and snapshots. To grant this permission with the following PowerShell example, set `$permissions = @('CopilotPolicySettings.Read')`. This read-only workload permission doesn't authorize remediation or `applyOnce`.

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

## Set up permissions for remediation and applyOnce (preview)

When you remediate a drift or create or update a monitor in `applyOnce` mode, TCM changes configuration in the workload on behalf of the signed-in administrator. These operations support delegated permissions only and are available through Microsoft Graph beta.

Three principals need permissions:

| Principal | Required permission or role |
|---|---|
| The app that calls the TCM APIs | The `ConfigurationMonitoring.ReadWrite.All` delegated permission for Microsoft Graph. |
| The TCM service principal | Delegated workload permissions for each resource that you want to remediate or apply. |
| The signed-in user | The workload administrative role required to manage each target resource. |

TCM must read a resource's current state before changing it. Grant the required read permissions even if you only plan to remediate. Permissions granted to the calling app don't replace the delegated workload permissions on the TCM service principal or the signed-in user's role.

For the currently supported resources and their permissions and roles, see [Supported resources for remediation and applyOnce (preview)](utcm-remediation-applyonce-resources.md). Monitoring and snapshot support doesn't establish support for these operations.

For Copilot and Agent resources, grant the TCM service principal the `CopilotPolicySettings.ReadWrite` **delegated** permission on Microsoft Graph for remediation and `applyOnce`. **AI Administrator** is the least-privileged role for the signed-in user for these operations. The [Copilot group-level policy restriction](utcm-copilot-resources.md#prerequisites-and-permissions) applies to monitoring, snapshots, remediation, and `applyOnce`, but not to Agent resources.

### Grant delegated permissions to the TCM service principal

TCM requires tenant-wide delegated consent. Use **consentType** `AllPrincipals`, not a per-user `Principal` grant. Tenant-wide consent doesn't give every user an administrative role; the signed-in user's workload roles still determine which configuration changes TCM can make.

Before you begin, [add the TCM service principal to your tenant](#add-the-tcm-service-principal-to-a-tenant). Use an account authorized to manage tenant-wide delegated consent. For the supported consent-management roles, see [Create oauth2PermissionGrant](/graph/api/oauth2permissiongrant-post#permissions). These setup roles are separate from the workload roles used for remediation; this procedure doesn't establish an end-to-end least-privileged administrator role.

Delegated permissions are granted separately for each resource API. The following example grants `Policy.ReadWrite.AuthenticationMethod` on Microsoft Graph for `microsoft.entra.authenticationmethodpolicy`. Select only the permissions needed by the [supported resources](utcm-remediation-applyonce-resources.md) in your baseline.

`Exchange.Manage` is the delegated scope for remediation and `applyOnce` only. It doesn't replace the `Exchange.ManageAsApp` application permission used for Exchange monitoring and snapshots.

#### Option 1: Use PowerShell for delegated grants

1. Install the required modules:

   ```powershell
   Install-Module Microsoft.Graph.Authentication
   Install-Module Microsoft.Graph.Applications
   Install-Module Microsoft.Graph.Identity.SignIns
   ```

2. Connect to Microsoft Graph:

   ```powershell
   Connect-MgGraph -Scopes @('Directory.Read.All', 'DelegatedPermissionGrant.ReadWrite.All')
   ```

   These permissions let the setup tool identify service principals and manage delegated grants. They aren't the workload permissions granted to TCM or the `ConfigurationMonitoring.ReadWrite.All` permission used to call TCM.

3. Create or update the tenant-wide grant. If a matching grant exists, preserve its scopes and add the requested scopes. Per-user grants aren't modified.

   ```powershell
   $ErrorActionPreference = 'Stop'
   $permissionsByResource = @{
       '00000003-0000-0000-c000-000000000000' = @('Policy.ReadWrite.AuthenticationMethod')
   }

   $clients = @(Get-MgServicePrincipal -Filter "appId eq '03b07b79-c5bc-4b5e-9bfa-13acf4a99998'")
   if ($clients.Count -ne 1) {
       throw 'Expected exactly one Tenant Configuration Management service principal. Complete service principal setup first.'
   }
   $TCM = $clients[0]
   $existingGrants = @(Get-MgOauth2PermissionGrant -Filter "clientId eq '$($TCM.Id)'" -All)

   foreach ($resourceAppId in $permissionsByResource.Keys) {
       $resources = @(Get-MgServicePrincipal -Filter "appId eq '$resourceAppId'" -Property Id, AppId, Oauth2PermissionScopes)
       if ($resources.Count -ne 1) {
           throw "Expected exactly one resource service principal for $resourceAppId."
       }
       $resource = $resources[0]
       $enabledScopes = @($resource.Oauth2PermissionScopes | Where-Object IsEnabled | ForEach-Object Value)
       foreach ($permission in $permissionsByResource[$resourceAppId]) {
           if ($permission -cnotin $enabledScopes) {
               throw "The resource API doesn't expose an enabled delegated scope named '$permission'."
           }
       }
       $grants = @($existingGrants | Where-Object {
           $_.ResourceId -eq $resource.Id -and $_.ConsentType -eq 'AllPrincipals'
       })
       if ($grants.Count -gt 1) {
           throw "More than one tenant-wide grant exists for $resourceAppId. Review the grants before continuing."
       }

       if ($grants.Count -eq 1) {
           $grant = $grants[0]
           $scope = (@($grant.Scope -split '\s+') + $permissionsByResource[$resourceAppId] | Where-Object { $_ } | Sort-Object -Unique) -join ' '
           Update-MgOauth2PermissionGrant -OAuth2PermissionGrantId $grant.Id -BodyParameter @{ scope = $scope }
       }
       else {
           New-MgOauth2PermissionGrant -BodyParameter @{
               clientId    = $TCM.Id
               consentType = 'AllPrincipals'
               resourceId  = $resource.Id
               scope       = $permissionsByResource[$resourceAppId] -join ' '
           }
       }
   }
   ```

   For an `AllPrincipals` grant, omit **principalId** from the creation body. An explicitly supplied null can be serialized as an empty string by the PowerShell SDK and rejected by the API.

4. Verify the grants:

   ```powershell
   Get-MgOauth2PermissionGrant -Filter "clientId eq '$($TCM.Id)'" -All |
       Where-Object ConsentType -eq 'AllPrincipals' |
       Format-Table ClientId, ResourceId, ConsentType, PrincipalId, Scope
   ```

#### Option 2: Use the Microsoft Graph API for delegated grants

1. Get the object IDs of the TCM service principal and the resource service principal. Repeat the second request for each resource API that you need.

   ```http
   GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='03b07b79-c5bc-4b5e-9bfa-13acf4a99998')?$select=id
   ```

   ```http
   GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='00000003-0000-0000-c000-000000000000')?$select=id
   ```

2. Check for existing delegated permission grants for the TCM service principal:

   ```http
   GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$filter=clientId eq '<TCM service principal ID>'
   ```

3. Find the grant whose **resourceId** matches the resource service principal and whose **consentType** is `AllPrincipals`. If no matching grant exists, [create a delegated permission grant](/graph/api/oauth2permissiongrant-post). Omit **principalId** for tenant-wide consent.

   ```http
   POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
   Content-Type: application/json

   {
     "clientId": "<TCM service principal ID>",
     "consentType": "AllPrincipals",
     "resourceId": "<resource service principal ID>",
     "scope": "Policy.ReadWrite.AuthenticationMethod"
   }
   ```

   If a tenant-wide grant already exists for that resource, [update it](/graph/api/oauth2permissiongrant-update). The **scope** value replaces the existing value, so include all permissions that must remain granted. For example, if the existing scope is `Policy.ReadWrite.AuthenticationMethod`, the following request adds the permission for `microsoft.entra.authorizationpolicy` without removing the existing permission:

   ```http
   PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants/<grant ID>
   Content-Type: application/json

   {
     "scope": "Policy.ReadWrite.AuthenticationMethod Policy.ReadWrite.Authorization"
   }
   ```

Replace the placeholder values:

- `<TCM service principal ID>`: The object ID of the TCM service principal in your tenant.
- `<resource service principal ID>`: The object ID of the resource service principal, such as Microsoft Graph or Office 365 Exchange Online, in your tenant.
- `<grant ID>`: The **id** of the existing `AllPrincipals` delegated permission grant for the resource.

The **clientId** and **resourceId** values are service principal object IDs, not application IDs. For more information, see [Grant or revoke API permissions programmatically](/graph/permissions-grant-via-msgraph?pivots=grant-delegated-permissions).

### Assign roles to the signed-in user

Delegated workload permissions don't elevate the signed-in user's privileges. Assign each user who remediates drifts or creates or updates `applyOnce` monitors the workload role required for each target resource. For Microsoft Entra role assignment steps, see [Assign Microsoft Entra roles to users](/entra/identity/role-based-access-control/manage-roles-portal).

### How applyOnce monitors use and store tokens

When you create or update an `applyOnce` monitor, TCM applies the baseline in a background job shortly afterwards. The job runs on behalf of the administrator who created or updated the monitor and can only make changes that administrator is allowed to make.

TCM obtains delegated access tokens for the signed-in administrator only for the workloads needed by the baseline. TCM stores these tokens, including the refresh token, until the job has run.

- Tokens are stored only for `applyOnce` monitors. Monitors in other modes don't store the administrator's tokens.
- Stored tokens are encrypted at rest with Microsoft-managed keys.

### Protect stored tokens with Customer Key

If your organization uses Microsoft Purview Customer Key with a data encryption policy (DEP) for multiple Microsoft 365 workloads, TCM also encrypts the stored tokens with your keys. After the policy is assigned to your tenant, TCM detects and uses it automatically. No TCM setting, switch, API parameter, or request-body change is required.

To configure Customer Key:

1. [Set up Customer Key](/purview/customer-key-set-up), including its licensing prerequisites.
2. [Create and assign a data encryption policy for multiple workloads](/purview/customer-key-manage).

For an overview, see [DEP for multiple Microsoft 365 workloads](/purview/customer-key-overview#dep-for-multiple-microsoft-365-workloads).

Keep the following considerations in mind:

- **Applicable policy:** Only a DEP for multiple Microsoft 365 workloads applies to TCM tokens. Exchange mailbox DEPs and SharePoint or OneDrive DEPs don't apply.
- **Policy detection:** Allow up to four hours after you assign the policy. Tokens stored before TCM detects the policy remain encrypted with Microsoft-managed keys until they're deleted at the end of their job.
- **Failures:** If TCM can't confirm your tenant's Customer Key status or can't reach the encryption service, creating or updating an `applyOnce` monitor fails. TCM doesn't fall back to storing the token without your key. Wait a few minutes and try again.
- **Key revocation:** Standard Customer Key behavior applies. If your keys become unavailable, Microsoft 365 can use the [availability key](/purview/customer-key-availability-key-understand) to keep the service running. To permanently remove access, follow the [data purge path](/purview/customer-key-manage#revoke-your-keys-and-start-the-data-purge-path).

## Related content

- [Overview of the Tenant Configuration Management APIs](/graph/unified-tenant-configuration-management-concept-overview)
- [Tenant Configuration Management API overview](/graph/api/resources/unified-tenant-configuration-management-api-overview?view=graph-rest-beta&preserve-view=true)
- [Supported resources for remediation and applyOnce (preview)](utcm-remediation-applyonce-resources.md)
