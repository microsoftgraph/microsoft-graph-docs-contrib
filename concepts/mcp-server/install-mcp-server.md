---
title: Set Up your AI Client to use the Microsoft MCP Server for Enterprise
description: "[Article description]."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Lucaspol
ms.service: enterprise-mcp-server
ms.topic: install-set-up-deploy
ms.date: 11/04/2025
zone_pivot_groups: enterprise-mcp-server-client-setup

#customer intent: As a developer, I want to configure my AI client to connect to the Microsoft MCP Server so that I can integrate enterprise data into my applications.
---

# Set Up your AI Client to use the Microsoft MCP Server for Enterprise

<!-- Start of the steps applicable to VS Code -->
:::zone pivot="vs-code"

## Prerequisites

Before you begin, make sure you have:

- [Visual Studio Code](https://code.visualstudio.com/) with [GitHub Copilot](https://github.com/features/copilot) and [GitHub Copilot chat](https://github.com/features/copilot-chat) extensions installed
- Signed in to your Microsoft Entra tenant in VS Code

## Set up the Microsoft Graph MCP Server

1. Select the following button to install the Microsoft Graph MCP Server extension for VS Code.

    [Icon](https://vscode.dev/redirect/mcp/install?name=MicrosoftGraph&config=%7B%22name%22%3A%22MicrosoftGraph%22%2C%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.graph.microsoft.com%22%7D)

    > [!NOTE]
    > Alternatively, install the extension manually by downloading it from the [VS Code marketplace](https://marketplace.visualstudio.com/items?itemName=ms-graph.vscode-graph-mcp-server), or search for and install **Microsoft Graph MCP Server** in the Extensions view of VS Code.
1. After you install the extension, open GitHub Copilot and switch to Agent mode in the context window.
1. Select the **Configure Tools** icon to see the list of available tools. Check or search for **MCP Server: MicrosoftGraph**, and expand the menu to see the list of its available tools.
   1. If the **MCP Server: MicrosoftGraph** tool isn't listed, select the refresh button on the context window, then retry.

## Run the Microsoft Graph MCP Server

1. In the GitHub Copilot window, select the **Configure chat...** cog wheel at the top right > **MCP Servers**. The Extensions pane opens in VS Code and shows the list of installed MCP Servers, including `MicrosoftGraph`.
1. Select the cog wheel for **MicrosoftGraph** > **Start Server**.

    > [!NOTE]
    > You can also start the MCP Server from the actions inline the *mcp.json* configuration file. For more information, see [Manage MCP servers](https://code.visualstudio.com/docs/copilot/customization/mcp-servers#_manage-mcp-servers).
## Test the Microsoft Graph MCP Server

1. Open GitHub Copilot and switch to Agent mode in the context window.
1. Enter the prompt: "How many users are in my tenant?".
    1. Copilot might prompt you to sign in to your Microsoft Entra tenant by using the browser. Complete the authentication process.
1. Review the response from the MCP Server, which should indicate:
   1. The tools that were invoked to identify the intent
   1. The REST API call that was made to Microsoft Graph
   1. A response in natural language showing the number of users in your tenant. 

## Troubleshooting

### Error: You may not include more than 128 tools in your request

**Root cause:** VS Code enforces a 128-tool limit. If you select more than 128 tools, this restriction triggers the error.

**Resolution:** Limit your selection to 128 tools or fewer. To resolve the issue, deselect unnecessary tools and ensure only the Microsoft MCP Server (or the tools you need) are selected.

### Error: 403 Forbidden

**Root cause:** This error occurs when you're not authorized to access the requested resource. This error can happen if VS Code doesn't have the privileges (permissions and admin roles) required to make the API call executed by the LLM.

**Resolution:** Check that you have the privileges you need to use the resource.

:::zone-end
<!-- End of the steps applicable to VS Code -->

<!-- Start of the steps applicable to custom LoB AI clients -->
:::zone pivot="custom-app"


:::zone-end
<!-- End of the steps applicable to custom LoB AI clients -->


<!-- Start of the steps applicable to Chat GPT -->
:::zone pivot="chat-gpt"

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) with an account that has privileges to register applications in the tenant. *Application Administrator* or *Cloud Application Administrator* roles are sufficient.
1. Expand **Entra ID** > **App registrations** > select **New registration**.
1. Enter a display **Name** for your application.
1. For **Supported account types**, choose "Single tenant".
1. For **Redirect URI**, select **Web**  for the platform and use the value `https://chatgpt.com/connector_platform_oauth_redirect`. Select **Register** to create the application.
1. On the application's page, record the following values for use later:
   - **Application (client) ID**
   - **Directory (tenant) ID**
1. On the new application's page, select **API Permissions** > **Add new permission** > find **Microsoft MCP Server for Enterprise** in the list of APIs.
1. Select **Delegated permissions** and add the required permissions based on your use case. For the sample request to get the number of users in your tenant, add the `MCP.User.Read.All` permission. 
1. Grant admin consent for the permissions you added.

Your app registration representing your ChatGPT client is now set up to use the Microsoft MCP Server for Enterprise. Next, you'll add the required settings to your ChatGPT client application to connect to the MCP Server.

## Configure your ChatGPT client to use the Microsoft MCP Server

1. Open Chat GPT **Settings** > **Connectors** > **Advanced settings** > enable **Developer mode**.
1. Select **Connectors** > Add a new connector using the following settings:
   - Name: Microsoft MCP Server for Enterprise
   - MCP Server URL: `https://mcp.svc.cloud.microsoft`
   - Authentication: OAuth
   - ID: Use the Application (client) ID you recorded earlier
1. Select **Create** then **Connect**.
1. In your Chat GPT context window, when you select the **+** sign, you see the new connector listed under the **More** menu.

## Test the Microsoft Graph MCP Server

1. Enter the prompt: "How many users are in my tenant?".
1. Review the response from the MCP Server, which should indicate:
   1. The tools that were invoked to identify the intent
   1. The REST API call that was made to Microsoft Graph
   1. A response in natural language showing the number of users in your tenant. 

:::zone-end
<!-- End of the steps applicable to Chat GPT -->

<!-- Start of the steps applicable to Claude -->
:::zone pivot="claude"



:::zone-end
<!-- End of the steps applicable to Claude -->