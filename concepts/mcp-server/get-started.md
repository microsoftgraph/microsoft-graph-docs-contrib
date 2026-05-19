---
title: Get Started With the Microsoft MCP Server for Enterprise
description: "Microsoft MCP Server for Enterprise: Learn how to install, configure, and run the MCP Server in your MCP clients to query Microsoft Graph using natural language."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Licantrop0
ms.subservice: ent-mcp-server
ms.topic: get-started
ms.date: 05/05/2026

#customer intent: As a developer, I want to configure my AI client to connect to the Microsoft MCP Server so that I can integrate enterprise data into my applications.
---

# Get started with the Microsoft MCP Server for Enterprise

To start using the Microsoft MCP Server for Enterprise, you must enable it in your tenant. This process currently provisions both the MCP Server and Visual Studio Code. After provisioning, you can configure your MCP client to connect to the MCP Server.

This article describes how to provision the MCP server and configure both VS Code and custom MCP clients to connect to the Microsoft MCP Server for Enterprise.

## Provision the MCP Server and VS Code (only required once per tenant)

1. Start PowerShell in Administrator mode and install **Microsoft.Entra.Beta** PowerShell module (version 1.0.13 or later):

   ```powershell
   Install-Module Microsoft.Entra.Beta -Force -AllowClobber
   ```

2. Authenticate into the tenant where you'd like to register the MCP Server. You must be assigned either the *Application Administrator* or *Cloud Application Administrator* role to consent to the required permissions:

   ```powershell
   Connect-Entra -Scopes 'Application.ReadWrite.All', 'Directory.Read.All', 'DelegatedPermissionGrant.ReadWrite.All'
   ```

   > [!TIP]
   > Run `Get-EntraContext` after authentication to confirm the account, tenant, and scopes currently in use.

3. Register the Microsoft MCP Server for Enterprise in your tenant and grant all permissions to Visual Studio Code:

   ```powershell
   Grant-EntraBetaMCPServerPermission -ApplicationName VisualStudioCode
   ```

## Confirm the MCP server registration

Verify that both applications exist by using Microsoft Graph, Microsoft Entra PowerShell, or the Microsoft Entra portal.

| Name                                | Globally unique **appId** (client ID)  |
| ----------------------------------- | -------------------------------------- |
| Microsoft MCP Server for Enterprise | `e8c77dc2-69b3-43f4-bc51-3213c9d915b4` |
| Visual Studio Code                  | `aebc6443-996d-45c2-90f0-388ff96faa56` |

# [Microsoft Graph - verify registration](#tab/http)

<!-- {
  "blockType": "request",
  "name": "provision-mcp-verify-provisioning-appId-filter"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$select=id,appId,displayName&$filter=appId in('e8c77dc2-69b3-43f4-bc51-3213c9d915b4','aebc6443-996d-45c2-90f0-388ff96faa56')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/provision-mcp-verify-provisioning-appid-filter-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/provision-mcp-verify-provisioning-appid-filter-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/provision-mcp-verify-provisioning-appid-filter-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/provision-mcp-verify-provisioning-appid-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/provision-mcp-verify-provisioning-appid-filter-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/provision-mcp-verify-provisioning-appid-filter-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/provision-mcp-verify-provisioning-appid-filter-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Confirm permissions granted to your MCP clients

Validate the Microsoft MCP Server permissions that were granted to each MCP client.

# [Microsoft Graph - verify permissions](#tab/http)

<!-- {
  "blockType": "request",
  "name": "provision-mcp-verify-provisioning-clients-oauth2permissiongrants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$select=id,clientId,resourceId,scope&$filter=clientId eq '{mcp-client-servicePrincipal}' and resourceId eq '{mcp-server-servicePrincipal}'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/provision-mcp-verify-provisioning-clients-oauth2permissiongrants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## Connect your MCP client to the MCP Server

# [VS Code](#tab/vscode)

1. Click [Install Microsoft MCP Server for Enterprise](https://vscode.dev/redirect/mcp/install?name=Microsoft%20MCP%20Server%20for%20Enterprise&config=%7b%22name%22:%22Microsoft%20MCP%20Server%20for%20Enterprise%22%2c%22type%22:%22http%22%2c%22url%22:%22https://mcp.svc.cloud.microsoft/enterprise%22%7d) to open VS Code's MCP install page.
1. Select **Install** in VS Code and authenticate with an administrator account.
1. Open Copilot Chat in **Agent** mode and ask a tenant-specific question such as "How many users are in my tenant?"
   1. Review the MCP Server response, which includes:
      1. The tools that were invoked to understand the intent.
      1. The Microsoft Graph REST API call that was executed.
      1. A natural language answer that summarizes the tenant data.

# [Custom MCP clients](#tab/custom-clients)

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) with an account that can register applications (*Application Administrator* or *Cloud Application Administrator* roles are sufficient).
1. Register an application and consider the following settings:
   1. Application name.
   1. Supported account types (Single tenant).
   1. Platform and redirect URI for your MCP client.
1. Record both the **Application (client) ID** and the **Directory (tenant) ID** for later configuration.
1. To grant permissions:
   1. Select **Delegated permissions** and add the scopes that match your scenario (for example, add `MCP.User.Read.All` to count users in the tenant).
   1. Grant admin consent for the delegated permissions that you added.
1. Test your MCP client to confirm it can connect to the Microsoft MCP Server for Enterprise and complete the required operations.

Manage scopes for custom MCP clients by using Microsoft Entra PowerShell:

```powershell
Grant-EntraBetaMCPServerPermission -ApplicationId "<MCP_Client_Application_Id>" -Scopes "<Scope1>", "<Scope2>", "<...>"
Revoke-EntraBetaMCPServerPermission -ApplicationId "<MCP_Client_Application_Id>" -Scopes "<Scope1>", "<Scope2>", "<...>"
```

---

## View supported MCP Server scopes

The MCP Server supports only delegated permissions for user-interactive scenarios. App-only permissions or app-only workflows aren't supported. Use one of the following options (requires at least the `DelegatedPermissionGrant.Read.All` delegated permission) to inspect the available MCP scopes, and focus on scopes where `isEnabled` is `true`.

# [Microsoft Graph - list MCP scopes](#tab/http)

<!-- {
  "blockType": "request",
  "name": "provision-mcp-verify-provisioning-availablescopes"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='e8c77dc2-69b3-43f4-bc51-3213c9d915b4')/oauth2PermissionScopes
```

## List of MCP Server scopes

The naming of MCP scopes follows the pattern `MCP.{microsoft-graph-scope-name}`. For example, the [User.Read.All](../permissions-reference.md#userreadall) Microsoft Graph scope is exposed as `MCP.User.Read.All` on the MCP Server. To understand what each scope allows, refer back to the [Microsoft Graph permissions reference](../permissions-reference.md).

- MCP.AccessReview.Read.All
- MCP.AdministrativeUnit.Read.All
- MCP.Application.Read.All
- MCP.AuditLog.Read.All
- MCP.AuthenticationContext.Read.All
- MCP.Device.Read.All
- MCP.DirectoryRecommendations.Read.All
- MCP.Domain.Read.All
- MCP.EntitlementManagement.Read.All
- MCP.GroupMember.Read.All
- MCP.HealthMonitoringAlert.Read.All
- MCP.IdentityRiskEvent.Read.All
- MCP.IdentityRiskyServicePrincipal.Read.All
- MCP.IdentityRiskyUser.Read.All
- MCP.LicenseAssignment.Read.All
- MCP.LifecycleWorkflows.Read.All
- MCP.LifecycleWorkflows-CustomExt.Read.All
- MCP.LifecycleWorkflows-Reports.Read.All
- MCP.LifecycleWorkflows-Workflow.Read.All
- MCP.LifecycleWorkflows-Workflow.ReadBasic.All
- MCP.NetworkAccess.Read.All
- MCP.NetworkAccess-Reports.Read.All
- MCP.Organization.Read.All
- MCP.Policy.Read.All
- MCP.Policy.Read.ConditionalAccess
- MCP.ProvisioningLog.Read.All
- MCP.Reports.Read.All
- MCP.RoleAssignmentSchedule.Read.Directory
- MCP.RoleEligibilitySchedule.Read.Directory
- MCP.RoleManagement.Read.Directory
- MCP.ServiceHealth.Read.All
- MCP.ServiceMessage.Read.All
- MCP.Synchronization.Read.All
- MCP.User.Read.All
- MCP.UserAuthenticationMethod.Read.All
- MCP.GroupSettings.Read.All

---

## Disable the MCP Server for Enterprise

Because the MCP Server for Enterprise is a Microsoft-owned service, you can't delete it from your tenant. However, you can disable it if needed.

# [Microsoft Graph - disable MCP server](#tab/http)

<!-- {
  "blockType": "request",
  "name": "provision-mcp-delete-enterprisemcpserver"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals(appId='e8c77dc2-69b3-43f4-bc51-3213c9d915b4')
{
  "accountEnabled": false
}
```
