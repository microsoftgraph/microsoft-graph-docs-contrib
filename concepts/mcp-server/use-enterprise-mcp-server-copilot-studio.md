---
title: "Use Microsoft MCP Server for Enterprise from Copilot Studio"
description: "Learn how to connect a Microsoft Copilot Studio agent to the Microsoft MCP Server for Enterprise to query Microsoft Graph data using natural language."
author: msewaweru
ms.author: eunicewaweru
ms.reviewer: Licantrop0
ms.subservice: ent-mcp-server
ms.topic: how-to
ms.custom: msecd-doc-authoring-106
ms.date: 03/25/2026

#customer intent: As a developer or an IT administrator, I want to connect a Copilot Studio agent to the Microsoft MCP Server for Enterprise so that I can query Microsoft Graph data using natural language.
---

# Use Microsoft MCP Server for Enterprise from Copilot Studio

The [Microsoft MCP Server for Enterprise](/graph/mcp-server/overview) enables AI agents to query enterprise data in your Microsoft Entra tenant by using natural language. Learn how to connect a Microsoft Copilot Studio agent to the Microsoft MCP Server for Enterprise using a custom connector.

## Prerequisites

- A Microsoft Entra tenant.
- An admin user account in the tenant with the following roles assigned in the [Microsoft Entra admin center](https://entra.microsoft.com):
  - **Cloud Application Administrator** — required to create and configure the connector.
  - Appropriate directory roles for the Graph operations your agent performs — required so the MCP Server can execute Graph API calls on behalf of the signed-in user.
  Sign in to both Copilot Studio and Power Apps with this tenant admin account.
- Complete the MCP Server provisioning steps in [Get started with the Microsoft MCP Server for Enterprise](/graph/mcp-server/get-started). For more information, see [MCP Server for Enterprise documentation](https://aka.ms/MCPServerForEnterprise).
- A [client app registration](/entra/identity-platform/quickstart-register-app) in Microsoft Entra. You need the following from your app registration:
  - **Application (client) ID**
  - Assign the `MCP.*` API permissions to your app registration and grant admin consent. For more information, see [MCP Server for Enterprise documentation](https://aka.ms/MCPServerForEnterprise).
- A Power Platform environment that isn't blocked by Data Loss Prevention (DLP) policies. Avoid using the default environment, as tenant-level DLP policies often restrict custom connectors there. Use a **Developer** or **Sandbox** environment instead. If needed, create one from the [Power Platform Admin Center](https://admin.powerplatform.microsoft.com) > **Environments** > **+ New**.
- A Copilot Studio agent. If you don't have one, [create an agent in Copilot Studio](/microsoft-copilot-studio/fundamentals-get-started).

## Create the MCP connector in Copilot Studio

Create a connector to the Microsoft MCP Server for Enterprise from Copilot Studio. You complete the wizard later, after you configure the security settings in Power Apps and the federated credentials in your app registration.

1. In [Copilot Studio](https://copilotstudio.microsoft.com), select the environment where you want to create the connector (for example, a Developer or Sandbox environment). Use the environment picker in the top-right corner.
1. Open your agent and select the **Tools** tab.
1. Select **+ Add a tool**.
1. Select **Model Context Protocol**. The MCP onboarding wizard opens.
1. Fill in the following required fields:

    | Field | Value |
    |---|---|
    | **Server name** | `MCP-Server-for-Enterprise` |
    | **Server description** | `A Model Context Protocol (MCP) server that enables AI assistants to securely interact with Microsoft Graph API for enterprise identity and access management operations.` |
    | **Server URL** | `https://mcp.svc.cloud.microsoft/enterprise` |

1. In the **Authentication** section, select **OAuth 2.0** > **Manual**.
1. Fill in the following OAuth fields:

    | Field | Value |
    |---|---|
    | **Client ID** | The Application (client) ID of your client app registration. |
    | **Client secret** | Enter a placeholder value. You replace this authentication method with federated credentials in a later step.  |
    | **Authorization URL** | `https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize` |
    | **Token URL template** | `https://login.microsoftonline.com/organizations/oauth2/v2.0/token` |
    | **Refresh URL** | `https://login.microsoftonline.com/organizations/oauth2/v2.0/token` |
    | **Scopes** | `api://e8c77dc2-69b3-43f4-bc51-3213c9d915b4/.default` |

1. Select **Create**. Wait for the connector to initialize.
1. Copy the **Redirect URL** from the confirmation page. You need this URL in the next step.

> [!IMPORTANT]
> Don't select **Next** or close the wizard. Leave the wizard open while you complete the configuration steps that follow. You return to this wizard to finalize the setup.

## Add the redirect URL to your app registration

Add the redirect URL to your client app registration so the OAuth flow can redirect back to the connector.

1. In the [Microsoft Entra admin center](https://entra.microsoft.com), go to your client app registration.
1. Select **Authentication**.
1. Select **Add Redirect URI**, then select **Web**. The app registration must be configured as a **confidential client** (Web App/API). Don't select **Mobile and Desktop applications**, as those indicate a public client and aren't supported.
1. In the **Redirect URI** field, paste the redirect URL you copied from Copilot Studio.
1. Select **Configure**.

## Configure the custom connector in Power Apps

Update the connector's security settings to use a managed identity for authentication. This step also generates the managed identity values you need to create federated credentials.

### Navigate to the custom connector

1. Sign in to the [Power Apps portal](https://make.powerapps.com).
1. Make sure you're in the same environment where you created the connector in Copilot Studio. Use the environment picker in the top-right corner.
1. On the left pane, select **More** > **Discover all**.
1. Under **Data**, select **Custom connectors**.
1. Find your connector (named **MCP-Server-for-Enterprise**) in the list.
1. Select the pencil (**Edit**) icon next to your connector to open the connector wizard.

### Update the security settings

1. In the connector wizard, select the **2. Security** tab.
1. Under **Authentication type**, select **Edit**.
1. Verify that the **Authentication type** is set to **OAuth 2.0** and **Identity Provider** is set to **Azure Active Directory**.
1. Select **Enable Service Principal Support** and choose **Use Managed Identity**.
1. Update the following fields:

    | Field | Value |
    |---|---|
    | **Tenant ID** | Your Microsoft Entra tenant ID. |
    | **Resource URL** | `https://mcp.svc.cloud.microsoft/enterprise/` |
    | **Enable on-behalf-of login** | Set to **true**. |

1. Select **Update Connector** in the top-right corner and wait for the update to complete.
1. After the update completes, note the **Managed Identity** values displayed on the page. You need the **Issuer** and **Subject** values for the next step.

> [!NOTE]
> If your organization uses client secrets instead of federated credentials, re-enter the **Client secret** value from your app registration and skip the next section. The client secret isn't persisted and must be re-entered each time you edit the connector.

## Create federated credentials for the app registration

Configure federated credentials on your app registration so the custom connector can authenticate without a client secret. This approach is more secure because it eliminates the need for secret rotation.

1. In the [Microsoft Entra admin center](https://entra.microsoft.com), go to your client app registration.
1. Select **Certificates & secrets**.
1. Select the **Federated credentials** tab.
1. Select **+ Add credential**.
1. Under **Federated credential scenario**, select **Other issuer**.
1. Fill in the following fields using the managed identity values from the previous step:

    | Field | Value |
    |---|---|
    | **Issuer** | The **Issuer** value from the managed identity displayed on the custom connector. |
    | **Type** | Select **Explicit subject identifier**. |
    | **Value** | The **Subject** value from the managed identity displayed on the custom connector. |
    | **Name** | Use the exact name of the custom connector (for example, `MCP-Server-for-Enterprise`). |

1. Select **Add**.

## Test the connection

Confirm that the connector can establish a connection before you finalize the setup in Copilot Studio.

1. In the custom connector wizard in Power Apps, select the **5. Test** tab.
1. Select **+ New connection**. A dialog box appears showing the connector name.
1. Select **Create**. A sign-in pop-up appears. Sign in with your tenant admin account.
1. After sign-in succeeds, the **Connections** page opens. Verify that your connection shows a status of **Connected**.

## Complete the setup in Copilot Studio

Return to the Copilot Studio wizard to finalize the MCP tool and verify that the agent can query Microsoft Graph data.

1. Go back to the MCP onboarding wizard in [Copilot Studio](https://copilotstudio.microsoft.com) that you left open earlier.
1. Select **Next**.
1. In the **Add tool** dialog, select **Create new connection**, then select **Create**. A sign-in pop-up appears.
1. Sign in with your tenant admin account.
1. After sign-in succeeds, select **Add and configure** to finish adding the MCP tool to your agent.
1. Select **Test** in the upper-right corner to open a test session.
1. Ask a question such as, "How many users are in my tenant?"
1. The agent should:
    1. Invoke the MCP Server tools to understand the intent.
    1. Execute the appropriate Microsoft Graph API call.
    1. Return a natural language answer that summarizes the tenant data.

> [!NOTE]
> The Microsoft MCP Server for Enterprise currently supports **read-only** operations. Write actions aren't yet allowed.

## Troubleshooting

| Issue | Cause | Resolution |
|---|---|---|
| Custom connector creation blocked by DLP policy | Tenant-level Data Loss Prevention policies restrict custom connectors in the current environment. | Create a Developer or Sandbox environment from the [Power Platform Admin Center](https://admin.powerplatform.microsoft.com) and recreate the connector there. |
| 403 Forbidden when the agent queries Graph data | The signed-in user lacks the necessary Entra directory roles, or the connection token doesn't reflect recently assigned permissions. | Verify the user has the appropriate Entra roles for the requested Graph operations. If roles were recently assigned, delete the existing connection in Power Apps and create a new one to obtain a fresh token. |
| Connection fails after creating federated credentials | The federated credential Issuer, Subject, or Name values don't match the managed identity on the custom connector. | In the app registration, verify the federated credential values match the managed identity displayed on the custom connector exactly. Delete and recreate the federated credential if needed. |

## Related content

- [Overview of Microsoft MCP Server for Enterprise](/graph/mcp-server/overview)
- [Get started with the Microsoft MCP Server for Enterprise](/graph/mcp-server/get-started)
- [Use a custom connector from a Power Automate flow](/connectors/custom-connectors/use-custom-connector-flow)

