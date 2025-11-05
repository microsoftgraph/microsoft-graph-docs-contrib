---
title: Set Up your MCP Client to use Microsoft MCP Server for Enterprise
description: "As a developer, I want to configure my AI client to connect to the Microsoft MCP Server so that I can integrate enterprise data into my applications."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: luca.spolidoro
ms.service: enterprise-mcp-server
ms.topic: install-set-up-deploy
ms.date: 11/05/2025
zone_pivot_groups: enterprise-mcp-server-client-setup

#customer intent: As a developer, I want to configure my AI client to connect to the Microsoft MCP Server so that I can integrate enterprise data into my applications.
---

# Set Up your MCP Client to use Microsoft MCP Server for Enterprise

This article describes how to configure your Model Context Protocol (MCP) client to connect to the Microsoft MCP Server for Enterprise. After you complete the setup, your AI applications can access enterprise data through Microsoft Graph.

<!-- Start of the steps applicable to VS Code -->
:::zone pivot="vs-code"

The following sections describe how to set up the Microsoft MCP Server for Enterprise in Visual Studio Code (VS Code). Select your client type at the top of this article to view the relevant instructions.

## Prerequisites

Before you begin, make sure you:

- Have [Visual Studio Code](https://code.visualstudio.com/) with [GitHub Copilot](https://github.com/features/copilot) and [GitHub Copilot chat](https://github.com/features/copilot-chat) extensions installed.
- Are signed in to your Microsoft Entra tenant in VS Code.

## Set up the Microsoft MCP Server for Enterprise

1. Select the following button to install the Microsoft MCP Server for Enterprise extension for VS Code. Alternatively, install the extension manually by downloading it from the [VS Code marketplace](https://marketplace.visualstudio.com/items?itemName=ms-graph.vscode-graph-mcp-server), or search for and install **Microsoft MCP Server for Enterprise** in the Extensions view of VS Code.

    [Icon](https://vscode.dev/redirect/mcp/install?name=MicrosoftGraph&config=%7B%22name%22%3A%22MicrosoftGraph%22%2C%22type%22%3A%22http%22%2C%22url%22%3A%22https%3A%2F%2Fmcp.graph.microsoft.com%22%7D)

1. After you install the extension, open GitHub Copilot and switch to **Agent** mode in the context window.
1. Select the **Configure Tools** icon to see the list of available tools. Check or search for **MCP Server: MicrosoftGraph**, and expand the menu to see the list of its available tools.
   1. If the **MCP Server: MicrosoftGraph** tool isn't listed, select the refresh button on the context window, then retry.

## Run the Microsoft MCP Server for Enterprise

1. In the GitHub Copilot window, select the **Configure chat...** cog wheel at the top right > **MCP Servers**. The Extensions pane shows the list of installed MCP Servers, including `MicrosoftGraph`.
1. Select the cog wheel for **MicrosoftGraph** > **Start Server**.

    > [!NOTE]
    > You can also start the MCP Server from the actions inline the *mcp.json* configuration file. For more information, see [Manage MCP servers](https://code.visualstudio.com/docs/copilot/customization/mcp-servers#_manage-mcp-servers).

## Test the Microsoft MCP Server for Enterprise

1. Open GitHub Copilot and switch to **Agent** mode in the context window.
1. Enter the prompt: "How many users are in my tenant?".
    1. Copilot might prompt you to sign in to your Microsoft Entra tenant by using the browser. Complete the authentication process.
1. Review the response from the MCP Server, which should indicate:
   1. The tools that were invoked to identify the intent
   1. The REST API call that was made to Microsoft Graph
   1. A response in natural language showing the number of users in your tenant. 

## Troubleshooting

### Error: You may not include more than 128 tools in your request

**Root cause:** VS Code enforces a 128-tool limit. If you select more than 128 tools, this restriction triggers the error.

**Resolution:** Limit your selection to 128 tools or fewer. To resolve the issue, deselect unnecessary tools and ensure only the Microsoft MCP Server for Enterprise (or the tools you need) are selected.

### Error: 403 Forbidden

**Root cause:** This error occurs when you're not authorized to access the requested resource. This error can happen if VS Code doesn't have the privileges (permissions and admin roles) required to make the API call executed by the LLM.

**Resolution:** Check that you have the privileges you need to use the resource. Some LLMs like thinking LLMs might provide details about the missing privileges.

:::zone-end
<!-- End of the steps applicable to VS Code -->

<!-- Start of the steps applicable to custom applications -->
:::zone pivot="custom-app"

The following sections describe how to set up the Microsoft MCP Server for Enterprise for a custom application. Select your client type at the top of this article to view the relevant instructions.

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) with an account that has privileges to register applications in the tenant. *Application Administrator* or *Cloud Application Administrator* roles are sufficient.
1. Complete the steps to register an application and consider the following settings:
   1. The name.
   1. The redirect URI and platform.
   1. The supported account types.

1. Record the following values for the app registration for use when configuring your custom MCP client:
       - **Application (client) ID**
       - **Directory (tenant) ID**
1. To grant permissions:
   1. Select **Delegated permissions** and add the required permissions based on your use case. For the sample request to get the number of users in your tenant, add the `MCP.User.Read.All` permission. 
   1. Grant admin consent for the permissions you added.
1. Test your MCP client to ensure it can connect to the MCP Server for Enterprise and perform the intended operations.

:::zone-end
<!-- End of the steps applicable to custom applications -->


<!-- Start of the steps applicable to Chat GPT -->
:::zone pivot="chat-gpt"

The following sections describe how to set up the Microsoft MCP Server for Enterprise for Chat GPT. Select your client type at the top of this article to view the relevant instructions.

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) with an account that has privileges to register applications in the tenant. *Application Administrator* or *Cloud Application Administrator* roles are sufficient.
1. Expand **Entra ID** > **App registrations** > select **New registration**.
1. Enter a display **Name** for your application.
1. For **Supported account types**, choose "Single tenant".
1. For **Redirect URI**, select **Public client/native (mobile & desktop)** for the platform and use the value `https://chatgpt.com/connector_platform_oauth_redirect`. Select **Register** to create the application.
1. On the application's page, record the following values for use later:
   - **Application (client) ID**
   - **Directory (tenant) ID**
1. On the new application's page, select **API Permissions** > **Add a permission** > **APIs my organization uses** > search **Microsoft MCP Server for Enterprise** in the list of APIs.
<!--
1. On the new application's page, select **API Permissions** > **Add a permission** > find **Microsoft MCP Server for Enterprise** in the list of APIs.
-->
1. Select **Delegated permissions** and add the required permissions based on your use case. For the sample request to get the number of users in your tenant, add the `MCP.User.Read.All` permission. 
1. Grant admin consent for the permissions you added.

Your app registration representing your ChatGPT client is now set up to use the MCP Server for Enterprise. Next, you add the required settings to your ChatGPT client application to connect to the MCP Server.

## Configure your ChatGPT client to use the Microsoft MCP Server

1. Open Chat GPT **Settings** > **Connectors** > **Advanced settings** > enable **Developer mode**.
1. Select **Connectors** > Add a new connector using the following settings:
   - Name: Microsoft MCP Server for Enterprise
   - MCP Server URL: `https://mcp.svc.cloud.microsoft`
   - Authentication: OAuth
   - ID: Use the Application (client) ID you recorded earlier
1. Select **Create** then **Connect**.
1. In your Chat GPT context window, when you select the **+** sign, you see the new connector listed under the **More** menu.

<!--
Indicate where the auth pop up shows up
-->

## Test the Microsoft MCP Server for Enterprise

1. Enter the prompt: "How many users are in my tenant?".
1. Review the response from the MCP Server, which should indicate:
   1. The tools that were invoked to identify the intent
   1. The REST API call that was made to Microsoft Graph
   1. A response in natural language showing the number of users in your tenant. 

:::zone-end
<!-- End of the steps applicable to Chat GPT -->

<!-- Start of the steps applicable to Claude -->
<!--
:::zone pivot="claude"

:::zone-end
-->
<!-- End of the steps applicable to Claude -->