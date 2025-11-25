---
title: Overview of Microsoft MCP Server for Enterprise
description: "Microsoft MCP Server for Enterprise enables AI agents to query enterprise identity data using natural language through the Model Context Protocol."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Licantrop0
ms.subservice: ent-mcp-server
ms.topic: overview
ms.date: 11/18/2025

#customer intent: As a developer or IT administrator, I want to understand the Microsoft MCP Server for Enterprise so that I can effectively use natural language to query and manage my organization's identity and device data.
---

# Overview of Microsoft MCP Server for Enterprise (preview)

The Microsoft MCP Server for Enterprise `https://mcp.svc.cloud.microsoft/enterprise` is a programmatic interface for AI agents to query enterprise data in your Microsoft Entra tenant by using natural language. Built on the [Model Context Protocol (MCP)](https://modelcontextprotocol.io/), an open standard that specifies how AI models interact with external tools and services, it translates natural language requests into Microsoft Graph API calls.

This overview explains how Microsoft MCP Server for Enterprise works and how you can integrate it into your AI-powered workflows.

> [!IMPORTANT]
> Microsoft MCP Server for Enterprise is currently in PREVIEW.
> This information relates to a prerelease product that may be substantially modified before it's released. Microsoft makes no warranties, expressed or implied, with respect to the information provided here.
>
> Microsoft MCP Server for Enterprise is offered under the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use).

## How it works

Suppose an administrator asks, "*How many users do we have in our Microsoft Entra tenant?*" The following steps show the workflow that runs inside an MCP-enabled AI agent:

1. **NLP processing**: The Large Language Model (LLM) analyzes the current prompt and chat history to extract intent (for example, "count the number of users in the tenant"). It decides to call the `microsoft_graph_suggest_queries` tool that ships with the Enterprise MCP Server.
1. **Semantic search**: `microsoft_graph_suggest_queries` converts the question into embeddings and searches its semantic index of Microsoft Graph query examples. It returns matches such as "count total number of users" or "count guest users," which map to candidate Graph API calls.
1. **Query selection**: The LLM evaluates the returned examples, selects the most relevant API call (for example, `GET /users/$count`), and determines the tool parameters that it needs.
1. **Execution**: The LLM invokes the `microsoft_graph_get` tool to run the `GET /users/$count` request. The MCP Server enforces the user's privileges and the scopes granted to the MCP client.
1. **API processing**: The MCP Server forwards the request to Microsoft Graph, receives the JSON response, and returns it to the MCP client.
1. **Natural language response**: The LLM interprets the JSON payload and converts it into a natural language answer such as, "There are 10,930 users in the directory."

## Tools

The Microsoft MCP Server for Enterprise exposes the following tools that an AI agent can invoke:

- **microsoft_graph_suggest_queries**: Uses retrieval-augmented generation (RAG) to search a curated catalog of Microsoft Graph API examples that align with the user's intent.
- **microsoft_graph_get**: Runs read-only Microsoft Graph API calls while honoring user roles, granted scopes, and Graph throttling limits.
- **microsoft_graph_list_properties**: Retrieves the schema for Microsoft Graph entities so that the AI model understands available properties and relationships before constructing requests.

## Usage scenarios

The Microsoft MCP Server for Enterprise enables several key scenarios:

- **IT helpdesk and support**: Support staff can answer questions like "*Which users didn't sign in last month?*" or "*Is MFA enabled for all administrators?*" without memorizing Graph endpoints. Multi-step questions such as "List all inactive user accounts that have Copilot licenses assigned" can also be handled.
- **Administrative reporting**: Administrators can generate reports conversationally (for example, "*Show me the unassigned licenses in my tenant*" or "*How many guest users do we have?*").
- **API discovery and prototyping**: Developers can explore and test Microsoft Graph APIs using natural language before integrating them into applications. The MCP server surfaces the underlying API calls so developers can reuse them in scripts or code.
- **Automation and scripting**: Scripted solutions, Power Platform flows, or Logic Apps can call the MCP server to execute delegated, natural-language-driven queries over Microsoft Entra data.

## Current scope and capabilities

Microsoft MCP Server for Enterprise is currently in public preview. It focuses on Microsoft Entra identity and directory **read-only** scenarios such as user, group, application, and device insights, plus administrative reporting. All operations respect existing Microsoft Graph permissions, user privileges, and tenant security policies.

## Licensing and costs

- There is no additional cost or separate license required to enable the MCP Server for Enterprise.
- You must have the appropriate licenses for the data you access (for example, Microsoft Entra ID Governance or Microsoft Entra ID P2 for Privileged Identity Management (PIM) content).
- Requests are limited to 100 calls per minute per user. Calls made through `microsoft_graph_get` are also subject to the standard [Microsoft Graph throttling limits](../throttling-limits.md#identity-and-access-service-limits).

## Cloud availability

Microsoft MCP Server for Enterprise is currently available only in the public cloud (global service).

## Logs

To log and monitor usage of Microsoft MCP Server for Enterprise, enable [Microsoft Graph activity logs](../microsoft-graph-activity-logs-overview.md) in your tenant. The MCP server uses Microsoft Graph APIs, so every request that an MCP client executes is captured in those logs.

For logs specific to MCP server usage, filter the activity logs by the MCP server **appId** (displayed as "application (client) ID" in the Entra admin center or **AppId** in the Log Analytics schema): `e8c77dc2-69b3-43f4-bc51-3213c9d915b4`. The following sample Kusto query retrieves these entries:

```kusto
MicrosoftGraphActivityLogs
| where TimeGenerated >= ago(30d)
| where AppId == "e8c77dc2-69b3-43f4-bc51-3213c9d915b4"
| project RequestId, TimeGenerated, UserId, RequestMethod, RequestUri, ResponseStatusCode
```

## Next step

- [Get started with MCP Server for Enterprise](get-started.md)
