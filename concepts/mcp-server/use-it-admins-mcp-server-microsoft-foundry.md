---
title: Use Microsoft MCP Server for IT Admins from Microsoft Foundry
description: "Learn how to connect Microsoft MCP Server for IT Admins as a tool in your Microsoft Foundry project to query Microsoft Entra data with natural language."
author: Licantrop0
ms.author: lucaspol
ms.subservice: ent-mcp-server
ms.topic: how-to
ms.date: 11/17/2026
ms.custom: msecd-doc-authoring-106

#customer intent: As a developer or an IT administrator, I want to integrate Microsoft MCP Server for IT Admins into my Microsoft Foundry agent so that I can query Microsoft Entra data with natural language.
---

# Use Microsoft MCP Server for IT Admins from Microsoft Foundry

[Microsoft MCP Server for IT Admins](overview.md) lets AI agents query data in your Microsoft Entra tenant by using natural language. This article shows how to connect the MCP server as a tool in your Microsoft Foundry project and start querying your organization's data.

## Prerequisites

- A Microsoft Entra tenant.
- An admin user account in the tenant with the following roles assigned in the [Microsoft Entra admin center](https://entra.microsoft.com):
  - [**Cloud Application Administrator**](/entra/identity/role-based-access-control/permissions-reference#cloud-application-administrator), to create the app registration and grant admin consent.
  - The directory roles for the Graph operations your agent performs, so the MCP server can call Graph APIs on behalf of the signed-in user.
  - At least [**Azure AI Developer**](/azure/role-based-access-control/built-in-roles/ai-machine-learning#azure-ai-developer) role scoped to the Microsoft Foundry project resource to connect tools and use agents.
- A [client app registration](/entra/identity-platform/quickstart-register-app) in Microsoft Entra with the following configuration:
  - **Application (client) ID**. Note this value for use during setup.
  - A **Web** redirect URI (confidential client), which you add in a later step.
  - **Client secret**. Go to **Certificates & secrets** > **Client secrets** and create a new secret. Copy the secret **value** for use during setup.
  - The three [required Microsoft Graph delegated permissions](get-started.md#required-permissions) and the Graph permissions for your scenarios, with admin consent.
- A Microsoft Foundry project with at least one agent configured.

## Connect the MCP server as a tool in Microsoft Foundry

Use the custom OAuth provider option to connect your app registration to the Microsoft MCP Server for IT Admins endpoint (`https://mcp.svc.cloud.microsoft/admin`).

1. In the [Microsoft Foundry portal](https://ai.azure.com/), make sure you're using the **New Foundry** UI and navigate to your project.

1. In the sidebar menu, select **Tools**. On the **Tools** tab, select **Connect a tool**.

1. Under **Catalog**, search for **Microsoft MCP Server for IT Admins**, and then select **Create**.

   :::image type="content" source="../images/mcp-server/foundry-tool-catalog-it-admins.png" alt-text="Screenshot of the Foundry Tool Catalog with a search for IT Admins that returns Microsoft MCP Server for IT Admins." border="true":::

1. For **OAuth Provider**, select **Custom** to use your own OAuth app registration for token exchange.

1. Provide the following configuration:

   | Field | Value |
   |---|---|
   | **Name** | Enter a unique identifier for the tool connection. |
   | **Remote MCP Server endpoint** | Prepopulated with `https://mcp.svc.cloud.microsoft/admin`. Leave it unchanged. |
   | **Authentication** | Prepopulated with **OAuth Identity Passthrough**. Leave it unchanged. |
   | **Client ID** | The application (client) ID from your app registration. |
   | **Client Secret** | The client secret value from your app registration. |
   | **Token URL**, **Auth URL**, and **Refresh URL** | These fields are prepopulated. Replace `organizations` with your tenant ID if your Microsoft Foundry project and app registration are in different tenants. Otherwise, leave `organizations` as the default value. |
   | **Scopes** | Prepopulated with `offline_access` and the three [required permissions](get-started.md#required-permissions) as `https://mcp.svc.cloud.microsoft/admin/` scopes. Leave it unchanged. |

   :::image type="content" source="../images/mcp-server/foundry-connect-it-admins-tool.png" alt-text="Screenshot of the Connect the Microsoft MCP Server for IT Admins tool dialog with the Custom OAuth provider selected and the endpoint, URLs, and scopes prepopulated." border="true":::

1. Select **Connect**, and then copy the **Redirect URL** provided.

1. Return to your Microsoft Entra app registration, go to **Authentication**, add the redirect URL as a redirect URI under **Web**, and save your changes. Foundry exchanges the token on the server with your client secret, so this app registration is a confidential client.

## Query Microsoft Entra data

After you connect the Microsoft MCP Server for IT Admins tool, add it to an agent and start querying your organization's data using natural language.

1. In the Microsoft Foundry sidebar, go to **Agents** and select an existing agent or create a new one.

1. In the agent configuration, add the Microsoft MCP Server for IT Admins tool you connected in the previous section.

### Sign in and authorize access

When you first use the tool, the agent prompts you to sign in and authorize access.

1. Select **Open consent** when prompted to sign in.

1. Follow the authentication prompts to grant access. You typically don't need to sign in again until the connection expires or is disconnected.

1. Approve each MCP tool call as prompted during query execution.

### Example queries

After you sign in, you can ask questions such as:

- "How many users are in my tenant?"
- "Which users haven't signed in for the last 30 days?"
- "Show me all guest users with admin roles."

> [!NOTE]
> Microsoft Foundry isn't listed as a client that supports write actions, so use this tool for read queries. Write actions require an MCP client that supports elicitation on MCP protocol version 2026-07-28. For those clients, see [Supported clients](get-started.md#supported-clients).

## Related content

- [Overview of Microsoft MCP Server for IT Admins](overview.md)
- [Sample prompts for Microsoft MCP Server for IT Admins](mcp-server-sample-prompts.md)
- [Set up authentication for MCP tools in Microsoft Foundry](/azure/foundry/agents/how-to/mcp-authentication)
