---
title: Overview of Microsoft MCP Server for IT Admins
description: "Microsoft MCP Server for IT Admins lets AI agents read and manage Microsoft Entra data, and read Microsoft Intune data, with natural language through the Model Context Protocol."
author: Licantrop0
ms.author: lucaspol
ms.subservice: ent-mcp-server
ms.topic: overview
ms.date: 11/17/2026

#customer intent: As a developer or IT administrator, I want to understand the Microsoft MCP Server for IT Admins so that I can use natural language to query and manage my organization's identity and device data.
---

# Overview of Microsoft MCP Server for IT Admins

Microsoft MCP Server for IT Admins (`https://mcp.svc.cloud.microsoft/admin`) lets AI agents read and manage data in your Microsoft Entra tenant, and read Microsoft Intune data, by using natural language. The server is built on the [Model Context Protocol (MCP)](https://modelcontextprotocol.io/), an open standard for how AI models call external tools and services. It translates natural language requests into Microsoft Graph API calls, and the user confirms each change before it runs.

This article describes how the MCP server works, what it can do, and how you control and monitor its access.

> [!IMPORTANT]
> Microsoft MCP Server for Enterprise (`https://mcp.svc.cloud.microsoft/enterprise`) is deprecated. It's now Microsoft MCP Server for IT Admins at `https://mcp.svc.cloud.microsoft/admin`, and you must migrate your MCP clients to the new endpoint. The `/enterprise` endpoint keeps working for a few months. For the steps, see [Migrate from Microsoft MCP Server for Enterprise](get-started.md#migrate-from-microsoft-mcp-server-for-enterprise).

Microsoft MCP Server for IT Admins is offered under the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use). It's deployed in the same regions as Microsoft Graph and is available in the following [national cloud deployments](/graph/deployments). Support for sovereign clouds is planned for a future release.

| Global service     | US Government L4 | US Government L5 (DOD) | China operated by 21Vianet |
|--------------------|------------------|------------------------|----------------------------|
| :white_check_mark: | :x:              | :x:                    | :x:                        |

## How it works

Suppose an administrator asks, "*How many users do we have in our Microsoft Entra tenant?*" An MCP-enabled AI agent runs these steps:

1. **Intent extraction**: The large language model (LLM) reads the prompt and chat history, extracts the intent (for example, "count the users in the tenant"), and calls the `microsoft_graph_suggest_queries` tool.
1. **Semantic search**: `microsoft_graph_suggest_queries` searches a semantic index of Microsoft Graph query examples. It returns matches such as "count total number of users" or "count guest users", each with its Graph API call.
1. **Query selection**: The LLM picks the most relevant call, such as `GET /users/$count`, and fills in the tool parameters.
1. **Execution**: The LLM calls `microsoft_graph_get` to run `GET /users/$count` with the `ConsistencyLevel: eventual` header. The request runs with the signed-in user's roles and the permissions consented to the MCP client.
1. **API processing**: The MCP server sends the request to Microsoft Graph and returns the response, here a plain-text count, to the MCP client.
1. **Natural language response**: The LLM turns the response into an answer, such as "There are 10,930 users in the directory."

A change follows the same path with a write tool. For "*Disable the account for [user email]*", the LLM calls `microsoft_graph_patch`, and the MCP server asks the user to confirm through [MCP elicitation](https://modelcontextprotocol.io/specification/2026-07-28/client/elicitation) before it calls Microsoft Graph. If the user lacks the access a request needs, the agent can call `request_access` to request it.

## Tools

The MCP server uses retrieval-augmented generation (RAG) over more than 500 real-world examples, plus few-shot prompting, to build complete Microsoft Graph queries. An AI agent can call these tools:

| Tool                              | Description                                                                                                                  |
|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| `microsoft_graph_suggest_queries` | Finds Microsoft Graph API calls that match the user's intent.                                                                |
| `microsoft_graph_get`             | Runs read-only Microsoft Graph API calls.                                                                                    |
| `microsoft_graph_list_properties` | Gets the properties of Microsoft Graph entities so the AI model can build accurate queries.                                  |
| `microsoft_graph_post`            | Creates resources or invokes actions with Microsoft Graph `POST` requests.                                                   |
| `microsoft_graph_put`             | Creates or replaces resources with Microsoft Graph `PUT` requests.                                                           |
| `microsoft_graph_patch`           | Updates resources with Microsoft Graph `PATCH` requests.                                                                     |
| `microsoft_graph_delete`          | Deletes resources with Microsoft Graph `DELETE` requests.                                                                    |
| `request_access`                  | Requests missing access: an access package assignment, a Privileged Identity Management (PIM) role activation, or a new permission grant for the MCP client. |

- **Confirmation**: The write tools (`microsoft_graph_post`, `microsoft_graph_put`, `microsoft_graph_patch`, and `microsoft_graph_delete`) ask the user to confirm through elicitation before they call Microsoft Graph. If the MCP client doesn't support elicitation on MCP protocol version [2026-07-28](https://modelcontextprotocol.io/specification/2026-07-28), the server denies the write action.
- **Tool selection**: In your MCP client or agent, enable only the tools it needs. For example, an agent that onboards users can use `microsoft_graph_post` and `microsoft_graph_patch` with `User.ReadWrite.All`, without `microsoft_graph_delete`. Tool selection narrows what an agent can do. It never grants more than the app's Graph permissions and the user's roles allow.
- **Request headers**: The tools accept Microsoft Graph request headers, such as `If-Match` with an ETag for safe concurrent updates, or `ConsistencyLevel` for advanced queries.
- **Request access**: `request_access` follows your existing policies, so access package approvals, PIM activation settings, and consent settings apply to each request.

## Usage scenarios

- **IT helpdesk and support**: Support staff can ask questions like "*Which users didn't sign in last month?*" or "*Is MFA enabled for all administrators?*" without memorizing Graph endpoints. The server also handles multi-step questions, such as "*List all inactive user accounts that have Copilot licenses assigned*".
- **Administrative reporting**: Administrators can build reports in conversation, for example "*Show me the unassigned licenses in my tenant*" or "*How many guest users do we have?*".
- **Administration**: Administrators can create, update, and delete users, groups, applications, and other directory objects, for example "*Create a user account for a new hire and add it to the Sales group*". The user confirms each change before it runs.
- **API discovery and prototyping**: Developers can explore Microsoft Graph APIs in natural language before they integrate them into applications. The MCP server shows the API calls it runs, so you can reuse them in scripts or code.

## Current scope and capabilities

Microsoft MCP Server for IT Admins supports **Microsoft Entra** identity and directory operations, such as users, groups, applications, devices, and administrative actions, with read and write access. It supports **Microsoft Intune** with read-only access, excluding the Intune reporting APIs.

Microsoft 365 APIs, such as mail, files, and Teams, aren't supported. For those, use [Work IQ MCP](/microsoft-365/copilot/extensibility/work-iq/mcp/overview).

The MCP server handles requests in these areas:

- **Security posture**: authentication methods and strengths, Conditional Access, and security defaults.
- **Privileged access**: who has which directory roles, whether they're assigned directly or through groups, and PIM status.
- **Application risk**: which applications and service principals exist, who owns them, which permissions and single sign-on they use, and which are ownerless or external.
- **Access governance**: who has access to which users, groups, and access packages; access review decisions; and joiner, mover, and leaver automation.
- **Device readiness**: managed and compliant status, join state, operating system and version distribution, stale or inactive devices, and Intune device and policy data.
- **Investigation**: sign-in, audit, provisioning, and network logs, health alerts, and service availability.
- **Spending and hygiene**: license counts and usage, unused or stale applications and groups, and domain configuration and contacts.
- **Administration**: creating, updating, and deleting users, groups, applications, and other directory objects, with a confirmation before each change.

## Authorization and permissions

Microsoft MCP Server for IT Admins supports **delegated permissions only**. A request succeeds only if both the Microsoft Graph permissions consented to the MCP client and the signed-in user's permissions and roles allow it. Consent doesn't give a user access beyond their own authorization.

You control access in layers:

1. **App permissions**: Besides the three [required permissions](get-started.md#required-permissions), grant only the Microsoft Graph permissions your scenarios need. For a read-only configuration, grant only read permissions for your scenarios and enable only the read tools. You can add permissions later.
1. **User roles**: The user's Microsoft Entra roles and permissions still apply, including PIM activation.
1. **User assignment**: When **Assignment required?** is set to **Yes** on the MCP client's enterprise application, only assigned users and groups can sign in to it.
1. **Tool selection**: Each client or agent exposes only the tools you enable.
1. **Confirmation**: The user confirms every write action before it runs.

When a user lacks access, the agent can call `request_access` to start an access request.

To register an MCP client and grant it permissions, see [Get started with Microsoft MCP Server for IT Admins](get-started.md).

## Licensing and costs

- Microsoft MCP Server for IT Admins doesn't cost extra or need a separate license.
- You need licenses for the data you access. For example, Privileged Identity Management (PIM) data requires Microsoft Entra ID Governance or Microsoft Entra ID P2.
- Each user can make up to 100 requests per minute to the MCP server. Tools that call Microsoft Graph are also subject to the [Microsoft Graph throttling limits](../throttling-limits.md).

## Logs

To monitor usage, enable [Microsoft Graph activity logs](../microsoft-graph-activity-logs-overview.md) in your tenant. They record the Microsoft Graph API calls that the MCP server makes.

To find calls made through the MCP server, filter the activity logs by the MCP server's application ID, `e8c77dc2-69b3-43f4-bc51-3213c9d915b4`. This ID appears as **Application (client) ID** in the Microsoft Entra admin center and as **AppId** in the Log Analytics schema. All MCP server requests use this app ID and a dedicated user agent. The following Kusto query retrieves these entries:

```kusto
MicrosoftGraphActivityLogs
| where TimeGenerated >= ago(30d)
| where AppId == "e8c77dc2-69b3-43f4-bc51-3213c9d915b4"
| project RequestId, ClientRequestId, TimeGenerated, UserId, RequestMethod, RequestUri, Scopes, ResponseStatusCode
```

To trace an API call, use the `RequestId` and `ClientRequestId` values with the timestamp, user, and request URI. To review write operations, filter on `RequestMethod`. The `Scopes` column lists the permissions in the Graph access token, not the specific permission that authorized each operation.

## Security and compliance

All operations follow Microsoft Graph permissions and security policies, and the user confirms every write action. The MCP server uses standard Microsoft Graph telemetry and doesn't log request payloads. Your AI client might store prompts and returned data, so review its data-handling and retention policies. Make sure your use of the MCP server meets your organizational, regulatory, and contractual requirements.

## Roadmap and feedback

Microsoft plans to expand support beyond the current Microsoft Entra and Microsoft Intune scenarios. Microsoft 365 APIs remain covered by [Work IQ MCP](/microsoft-365/copilot/extensibility/work-iq/mcp/overview). Share suggestions or report issues through the [feedback form](https://aka.ms/MCPServerForEnterpriseSurvey).

## Related content

- [Get started with Microsoft MCP Server for IT Admins](get-started.md)
- [Sample prompts for Microsoft MCP Server for IT Admins](mcp-server-sample-prompts.md)
- [Use Microsoft MCP Server for IT Admins from Copilot Studio](use-it-admins-mcp-server-copilot-studio.md) (read queries)
- [Use Microsoft MCP Server for IT Admins from Microsoft Foundry](use-it-admins-mcp-server-microsoft-foundry.md) (read queries)
