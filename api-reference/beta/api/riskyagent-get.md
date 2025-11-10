---
title: "Get riskyAgent"
description: Read the properties and relationships of riskyAgent object.
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: apiPageType
---

# Get riskyAgent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [riskyAgent](../resources/riskyagent.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "riskyagent-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/riskyagent-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/riskyAgents/{riskyAgentId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [riskyAgent](../resources/riskyagent.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_riskyagent"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/riskyAgents/{riskyAgentId}
```


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
  "value": {
    "@odata.type": "#microsoft.graph.riskyAgent",
    "id": "ccdc88ee-d0bb-86b5-3500-1d38195c4d6f",
    "agentDisplayName": "String",
    "isDeleted": "Boolean",
    "isEnabled": "Boolean",
    "isProcessing": "Boolean",
    "riskLastModifiedDateTime": "String (timestamp)",
    "riskDetail": "String",
    "riskLevel": "String",
    "riskState": "String"
  }
}
```

