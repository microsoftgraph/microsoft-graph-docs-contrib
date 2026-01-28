---
title: "List riskyAgents"
description: Retrieve the properties and relationships of a collection of riskyAgent objects.
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# List riskyAgents

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a collection of [riskyAgent](../resources/riskyagent.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskyagent_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskyagent-list-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-read](../includes/rbac-for-apis/rbac-identity-protection-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/riskyAgents
```

## Optional query parameters

This method supports the `$select`, `$count`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [riskyAgent](../resources/riskyagent.md) objects in the response body. The **odata.type** property indicates the type of risky agent which might be one of the following types: [riskyAgentIdentity](../resources/riskyagentidentity.md), [riskyAgentIdentityBlueprintPrincipal](../resources/riskyagentidentityblueprintprincipal.md), or [riskyAgentUser](../resources/riskyagentuser.md).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_riskyagent"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/riskyAgents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-riskyagent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-riskyagent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-riskyagent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-riskyagent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-riskyagent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-riskyagent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.riskyAgent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.riskyAgentUser",
      "id": "ccdc88ee-d0bb-86b5-3500-1d38195c4d6f",
      "agentDisplayName": "RiskyUserFirstPartyApp2",
      "isDeleted": false,
      "isEnabled": true,
      "isProcessing": true,
      "riskLastModifiedDateTime": "2025-10-10T09:21:00.1031892Z",
      "riskState": "atRisk",
      "riskLevel": "high",
      "riskDetail": "none"
    },
    {
      "@odata.type": "#microsoft.graph.riskyAgentIdentity",
      "id": "ccdc88ee-d0bb-86b5-3500-1d38195c4d6f",
      "agentDisplayName": "AgentIdentityBot",
      "isDeleted": false,
      "isEnabled": true,
      "isProcessing": true,
      "riskLastModifiedDateTime": "2025-10-10T22:40:15.7281572Z",
      "riskState": "atRisk",
      "riskLevel": "high",
      "riskDetail": "none"
    }
  ]
}
```

