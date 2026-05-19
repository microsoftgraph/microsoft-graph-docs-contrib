---
title: Use Microsoft MCP Server for Enterprise from Microsoft Foundry
description: "Learn how to connect Microsoft MCP Server for Enterprise as a tool in your Microsoft Foundry project to query Microsoft Entra data using natural language."
author: msewaweru
ms.author: eunicewaweru
ms.reviewer: FaithOmbongi
ms.subservice: ent-mcp-server
ms.topic: how-to
ms.date: 04/15/2026
ms.custom: msecd-doc-authoring-106

#customer intent: As a developer or an IT administrator, I want to integrate Microsoft MCP Server for Enterprise into my Microsoft Foundry agent so that I can query Microsoft Entra data using natural language.
---

# Use Microsoft MCP Server for Enterprise from Microsoft Foundry

The [Microsoft MCP Server for Enterprise](overview.md) enables AI agents to query data in your Microsoft Entra tenant by using natural language. This article shows you how to connect the MCP Server as a tool in your Microsoft Foundry project and start querying your organization's data.

## Prerequisites

- A Microsoft Entra tenant.
- An admin user account in the tenant with the following roles assigned in the [Microsoft Entra admin center](https://entra.microsoft.com):
  - [**Cloud Application Administrator**](/entra/identity/role-based-access-control/permissions-reference#cloud-application-administrator) — required to create the app registration and grant admin consent.
  - Appropriate directory roles for the Graph operations your agent performs — required so the MCP Server can execute Graph API calls on behalf of the signed-in user.
  - At least [**Azure AI Developer**](/azure/role-based-access-control/built-in-roles/ai-machine-learning#azure-ai-developer) role scoped to the Microsoft Foundry project resource to connect tools and use agents.
- Complete the MCP Server provisioning steps in [Get started with the Microsoft MCP Server for Enterprise](get-started.md). For more information, see [MCP Server for Enterprise documentation](https://aka.ms/MCPServerForEnterprise).
- A [client app registration](/entra/identity-platform/quickstart-register-app) in Microsoft Entra with the following configuration:
  - **Application (client) ID** — Note this value for use during setup.
  - **Client secret** — Go to **Certificates & secrets** > **Client secrets** and create a new secret. Copy the secret **value** for use during setup.
  - Assign the `MCP.*` API permissions to your app registration and grant admin consent. For more information, see [MCP Server for Enterprise documentation](https://aka.ms/MCPServerForEnterprise).
- A Microsoft Foundry project with at least one agent configured.

## Connect the MCP Server as a tool in Microsoft Foundry

Use the custom OAuth provider option to connect your app registration to the Microsoft MCP Server for Enterprise endpoint.

1. In the [Microsoft Foundry portal](https://ai.azure.com/), make sure you're using the **New Foundry** UI and navigate to your project.

1. In the sidebar menu, select **Tools**, and then select **Connect a tool**.

1. Under **Catalog**, search for **Microsoft MCP Server for Enterprise**, and then select **Create**.

1. For **OAuth Provider**, select **Custom** to use your own OAuth app registration for token exchange.

1. Provide the following configuration:

   | Field | Value |
   |---|---|
   | **Name** | Enter a unique identifier for the tool connection. |
   | **Client ID** | The application (client) ID from your app registration. |
   | **Client Secret** | The client secret value from your app registration. |
   | **Token URL**, **Auth URL**, and **Refresh URL** | These fields are prepopulated. Replace `organizations` with your tenant ID if your Microsoft Foundry project and app registration are in different tenants. Otherwise, leave `organizations` as the default value. |

1. Select **Connect**, and then copy the **Redirect URL** provided.

1. Return to your Microsoft Entra app registration, go to **Authentication**, add the redirect URL as a redirect URI, and save your changes.

## Query Microsoft Entra data

After you connect the Microsoft MCP Server for Enterprise tool, add it to an agent and start querying your organization's data using natural language.

1. In the Microsoft Foundry sidebar, go to **Agents** and select an existing agent or create a new one.

1. In the agent configuration, add the Microsoft MCP Server for Enterprise tool you connected in the previous section.

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

## Related content

- [Overview of Microsoft MCP Server for Enterprise](overview.md)
- [Sample prompts for Microsoft MCP Server for Enterprise](mcp-server-sample-prompts.md)
- [Set up authentication for MCP tools in Microsoft Foundry](/azure/foundry/agents/how-to/mcp-authentication)
