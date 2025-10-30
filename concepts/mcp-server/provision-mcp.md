---
title: Set Up and Manage the Microsoft MCP Server for Enterprise in Your Tenant
description: "Learn how to provision and manage the Microsoft MCP Server for Enterprise in your tenant and supported Microsoft-owned MCP Clients."
author: ombongifaith
ms.author: FaithOmbongi
ms.reviewer: Licantrop0
ms.service: enterprise-mcp-server
ms.topic: install-set-up-deploy
ms.date: 10/28/2025

#customer intent: As an IT admin, I want to provision and manage the Microsoft MCP Server for Enterprise so that I can enable and manage MCP Clients in my tenant.

---

# Set up and manage the Microsoft MCP Server for Enterprise in your tenant

To start using the Microsoft MCP Server for Enterprise, you must enable it in your tenant. This process provisions both the MCP Server and Microsoft-owned MCP Clients: Visual Studio Code, Visual Studio, and Visual Studio with MSAL.

<!-- Confirm M365 Copilot -->

After you enable the service, you can manage it by granting or revoking scopes to the MCP Clients as needed or disabling the service entirely.

<!--
Qs:
- Meaning of setting an exact scope list
- Need to understand if the GARSD operations apply to custom clients as well.
-->

This article guides you on how to provision and manage the Microsoft MCP Server for Enterprise in your tenant.

## Prerequisites

Before you begin, ensure you have the following:
- Sign-in to a Microsoft Entra tenant as a user with admin roles to manage applications and consent to permissions in the tenant. The least privileged [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) sufficient for this task are *Application Administrator* and *Cloud Application Administrator*.

## Provision the MCP Server

# [Microsoft Graph](#tab/http)

Sign-in to [Graph Explorer](https://aka.ms/ge) using the same admin account you used to run the script, and consent to the *Application.ReadWrite.All* permission.

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-Type: application/json

{
  "appId": "e8c77dc2-69b3-43f4-bc51-3213c9d915b4"
}
```

---

# [Powershell](#tab/powershell)

### Step 1: Allow PowerShell to run scripts

Start a PowerShell environment - either Windows PowerShell 5.1 or PowerShell 7.x - in Administrator mode and run the following command:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```

### Step 2: Download the MCP Server management script

Download the latest version of the MCP Server management script from the official repository.

### Step 3: Run the management script to provision the MCP Server

In Powershell, navigate to the directory where you saved the script then run the following command:

```powershell
.\Enterprise MCP PermissionGrants to VS and VSC.ps1
```

You're prompted to sign in with your credentials and consent to the *DelegatedPermissionGrant.ReadWrite.All* and *Application.ReadWrite.All* permissions. The combination of these Microsoft Graph permissions and your admin roles allows you to provision the MCP Server and clients, and grant and revoke scopes to the MCP Clients on behalf of your organization.

After signing in, the script does the following during its execution:

> [!div class="checklist"]
> * Provisions the MCP Server and Microsoft-owned MCP Clients, if they don't exist in your tenant already
> * [Displays available scopes on the MCP server](#supported-mcp-server-scopes)
> * [Prompts for your desired action against each MCP Client](#supported-mcp-server-actions)
> * Applies changes, verifies synchronization, and outputs the results to the console

<!--I can't tell if the output is because of COpilot Agent or the script itself.-->

#### Supported MCP Server scopes

The MCP Server supports a limited set of Microsoft Graph read-only delegated scopes. The naming of scopes are transformed to follow the pattern: `MCP.<microsoft-graph-scope-name>`. For example, the [User.Read.All](../permissions-reference.md#userreadall) Microsoft Graph scope is exposed as `MCP.User.Read.All` on the MCP Server.

The MCP Server doesn't support app-only permissions and app-only scenarios.

#### Supported MCP Server actions

The MCP Server supports the following actions when you run the management script:

| Action                                     | Description                                                  | Command |
|--------------------------------------------|--------------------------------------------------------------|---------|
| Grant ALL scopes to the MCP Clients        | You can't grant scopes to only some MCP Clients.             | `G`     |
| Add scopes to the MCP Clients              | You can't add scopes to only some MCP Clients.               | `A`     |
| Remove scopes from the MCP Clients         | You can't remove scopes from only some MCP Clients.          | `R`     |
| Set an exact scope list to the MCP Clients | You can't set an exact scope list for only some MCP Clients. | `S`     |
| Delete ALL scopes from the MCP Clients     | You can't delete scopes from only some MCP Clients.          | `D`     |

<!--QQ: What about custom clients if you had already installed them? Do these actions apply to them as well?-->
<!-- QQ: Revisit the provisioning steps to confirm if you can authorize for select users only. oauth2PermissionGrants showed that the grants were applied to all MCP Clients. -->

---

### Step 4: Verify the MCP Server provisioning

To verify that the MCP Server has been successfully provisioned, you can query the Microsoft Graph API or check the Enterprise Applications menu in the Microsoft Entra portal. The three applications have the following names and globally unique **appId**s (client ID on the Microsoft Entra portal):

| Name               | Globally unique appId (Client ID)      |
|--------------------|----------------------------------------|
| IDNA MCP Service   | `e8c77dc2-69b3-43f4-bc51-3213c9d915b4` |
| Visual Studio Code | `aebc6443-996d-45c2-90f0-388ff96faa56` |
| Visual Studio      | `04f0c124-f2bc-4f59-8241-bf6df9866bbd` |

<!-- TODO: Change MCP Server name -->

# [Microsoft Graph](#tab/http)

Sign in to [Graph Explorer](https://aka.ms/ge) using the same admin account you used to run the script, and execute the following query:

By using the application names:
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'IDNA MCP Service' OR displayName eq 'Visual Studio Code' OR displayName eq 'Visual Studio'
```

By using the globally unique **appId**:
```http
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=appId eq 'e8c77dc2-69b3-43f4-bc51-3213c9d915b4' OR appId eq 'aebc6443-996d-45c2-90f0-388ff96faa56' OR appId eq '04f0c124-f2bc-4f59-8241-bf6df9866bbd'
```

From the service principal object for the MCP Server, you can also query the delegated permissions that the server exposes and are available to grant to the MCP Clients.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId ='e8c77dc2-69b3-43f4-bc51-3213c9d915b4')/oauth2PermissionScopes
```

---

# [Admin center](#tab/entra-portal)

1. Sign in to the [Microsoft Entra portal](https://entra.microsoft.com/).
1. Expand **Entra ID** >  **Enterprise apps**.
1. Under the **Manage** group, select **All applications**.
1. Search the service principals either by name or client ID.

---

### Step 5: Verify permissions granted to the MCP Clients

# [Microsoft Graph](#tab/http)

The following request returns the list of MCP Clients authorized to call the MCP Server along with the granted scopes.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants
```

The following example shows a response:

```http
HTTP/1.1 200 OK
Content-type: application/json


```

---

# [Admin center](#tab/entra-portal)

1. Sign in to the [Microsoft Entra portal](https://entra.microsoft.com/).
1. Expand **Entra ID** >  **Enterprise apps**.
1. Under the **Manage** group, select **All applications**.
1. Search the service principals either by name or client ID and select it.
1. Navigate to the **Security** group and select **Permissions**. The list shows all the Microsoft MCP Server permissions that are granted to the MCP client.

---

## Disable the MCP Server for Enterprise

To disable the MCP Server for Enterprise, you need to remove the service principals associated with the MCP Server from the Enterprise Applications in the Microsoft Entra portal.

# [Microsoft Graph](#tab/http)

Sign in to [Graph Explorer](https://aka.ms/ge) using the same admin account you used to run the script, and execute the following query:

```http
PATCH https://graph.microsoft.com/v1.0/servicePrincipals/{id}

{
    "isDisabled": true
}
```

---

# [Admin center](#tab/entra-portal)

1. Sign in to the [Microsoft Entra portal](https://entra.microsoft.com/).
2. Expand **Entra ID** >  **Enterprise apps**.
1. Under the **Manage** group, select **All applications**.
1. Search the applications either by name or client ID and navigate to each of them.
1. Under the **Manage** group, toggle the **IsDisabled** switch on.

---

## Troubleshoot your installation

### 403 Forbidden error when running the management script in PowerShell

Verify that you signed in with an account that has either required roles and granted the required permissions. Run the `Get-MgContext` command and verify the **account**, **tenantId** and **scopes** properties.

## Next step -or- Related content

> [!div class="nextstepaction"]
> [Use Visual Studio Code as an MCP Client](link.md)

