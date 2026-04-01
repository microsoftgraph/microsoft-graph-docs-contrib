---
title: "List generativeAIInsights"
description: "Get a list of generativeAIInsight objects and their properties for Global Secure Access traffic insights."
author: "miritsadon"
ms.date: 03/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List generativeAIInsights

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [generativeAIInsight](../resources/networkaccess-generativeaiinsight.md) objects and their properties for Global Secure Access traffic insights.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_logs_list_generativeaiinsights" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-logs-list-generativeaiinsights-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/logs/generativeAiInsights
```

## Optional query parameters

This method supports the `$filter`, `$orderby`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

|Name|Syntax|Notes|
|:---|:---|:---|
|Filter|`/logs/generativeAiInsights?$filter=activity eq 'prompt'`|Filter by all scalar properties.|
|Server-side pagination|`@odata.nextLink=https://graph.microsoft.com/beta/networkAccess/logs/generativeAiInsights?$skiptoken="generatedtoken"`|The page size defaults to 1,000 and can't exceed it.|
|Sort|`/logs/generativeAiInsights?$orderby=createdDateTime desc`|You can order by all scalar properties.|
|Top|`/logs/generativeAiInsights?$top=50`|The maximum value is 1,000.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [generativeAIInsight](../resources/networkaccess-generativeaiinsight.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_generativeaiinsight"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/logs/generativeAiInsights?$filter=activity eq 'prompt'&$orderby=createdDateTime desc&$top=25
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-generativeaiinsight-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.generativeAIInsight)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/logs/generativeAiInsights",
  "value": [
    {
      "transactionId": "2088d793-6050-4458-b283-f0cdd0fab280",
      "content": "Generate me a photo of a cat",
      "createdDateTime": "2025-01-14T15:09:45Z",
      "activity": "prompt",
      "subactivity": "chat-interaction",
      "destinationUrl": "https://copilot.microsoft.com/chat",
      "userPrincipalName": "charles@fabrikam.com",
      "eventId": "aaf43b7f-59f8-4d6a-9a8b-8d6bb2a37f2f",
      "eventType": "prompt",
      "mcpClientName": null,
      "mcpServerName": null,
      "sessionId": ""
    },
    {
      "transactionId": "f7ac7830-18cc-4e98-9df2-c6d9fbe08d42",
      "content": "Generate me a summary of our Q1 sales data",
      "createdDateTime": "2025-01-14T15:12:31Z",
      "activity": "mcp",
      "subactivity": "tools/call",
      "destinationUrl": "https://copilot.microsoft.com/mcp",
      "userPrincipalName": "adele@fabrikam.com",
      "eventId": "6de0e17d-13db-4025-b2f3-f32b3f9ee9b8",
      "eventType": "mcpInitialize",
      "mcpClientName": "copilot-studio",
      "mcpServerName": "finance-tools",
      "sessionId": "5f1b7fb5-4d02-4f14-88f8-ef5b21e2f208"
    }
  ]
}
```

## Related content

- [logs resource type](../resources/networkaccess-logs.md)
- [generativeAIInsight resource type](../resources/networkaccess-generativeaiinsight.md)
- [List networkAccessTraffic](../api/networkaccess-logs-list-traffic.md)
