---
title: Get Started With Microsoft Graph MCP Server in VS Code
description: "Microsoft Graph MCP Server: Learn how to install, configure, and run the MCP Server in Visual Studio Code to query Microsoft Graph using natural language."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Licantrop0
ms.service: graph-mcp
ms.topic: get-started
ms.date: 08/29/2025

#customer intent: As a developer, I want to run the Microsoft Graph MCP Server in VS Code so that I can test its features in my development environment.
---

# Get started with Microsoft Graph MCP Server in VS Code

The Microsoft Graph MCP Server is supported in Visual Studio Code (VS Code), Microsoft 365 Copilot, and custom-built AI clients. This article guides you through installing and using the MCP Server in VS Code.

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

## Next step

> [!div class="nextstepaction"]
> [Explore more prompts](link.md)
