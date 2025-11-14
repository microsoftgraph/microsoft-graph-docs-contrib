---
title: Get Started With Microsoft Graph MCP Server in VS Code
description: "Microsoft Graph MCP Server: Learn how to install, configure, and run the MCP Server in Visual Studio Code to query Microsoft Graph using natural language."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Licantrop0
ms.service: graph-mcp
ms.topic: get-started
ms.date: 11/14/2025

#customer intent: As a developer, I want to configure my AI client to connect to the Microsoft MCP Server so that I can integrate enterprise data into my applications.
---

# Get started with Microsoft Graph MCP Server in VS Code

The Microsoft Graph MCP Server is supported in Visual Studio Code (VS Code) and custom-built AI clients. This article guides you through configuring the MCP Server for use in Visual Studio Code (VS Code).

## Prerequisites

Before you begin, make sure you:

- Have [VS Code](https://code.visualstudio.com/) with [GitHub Copilot](https://github.com/features/copilot) and [GitHub Copilot Chat](https://github.com/features/copilot-chat) extensions installed.
- Are signed in to your Microsoft Entra tenant in VS Code.

1. Select [Install Microsoft MCP Server for Enterprise](https://vscode.dev/redirect/mcp/install?name=Microsoft%20MCP%20Server%20for%20Enterprise&config=%7b%22name%22:%22Microsoft%20MCP%20Server%20for%20Enterprise%22%2c%22type%22:%22http%22%2c%22url%22:%22https://mcp.svc.cloud.microsoft/enterprise%22%7d) to launch VS Code's MCP install page.
1. After you install the extension, open GitHub Copilot and switch to **Agent** mode in the context window.
1. Select the **Configure Tools** icon to see the list of available tools. Check or search for **Microsoft MCP Server for Enterprise**, and expand the menu to see the list of its available tools.
   1. If the **Microsoft MCP Server for Enterprise** tool isn't listed, select the refresh button on the context window, and then retry.

## Run the Microsoft MCP Server for Enterprise

1. In the GitHub Copilot window, select the **Configure chat...** cog wheel at the top right > **MCP Servers**. The Extensions pane shows the list of installed MCP servers, including `Microsoft MCP Server for Enterprise`.
1. Select the cog wheel for **Microsoft MCP Server for Enterprise** > **Start Server**.

        > [!NOTE]
    > You can also start the MCP server from the actions inline the *mcp.json* configuration file. For more information, see [Manage MCP servers](https://code.visualstudio.com/docs/copilot/customization/mcp-servers#_manage-mcp-servers).

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

**Root cause:** VS Code enforces a 128-tool limit. If you select more than 128 tools, this restriction causes the error.

**Resolution:** Limit your selection to 128 tools or fewer. To fix the issue, clear unnecessary tools and ensure that only the Microsoft MCP Server for Enterprise (or the tools you need) are selected.

### Error: 403 Forbidden

**Root cause:** This error occurs when you aren't authorized to access the requested resource. This error can happen if VS Code doesn't have the privileges (permissions and admin roles) required to make the API call that the LLM executes.

**Resolution:** Check that you have the privileges you need to use the resource. Some LLMs, like thinking LLMs, might provide details about the missing privileges.