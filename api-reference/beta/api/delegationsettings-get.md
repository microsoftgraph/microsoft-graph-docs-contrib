---
title: "Get delegationSettings"
description: "Read the properties and relationships of a delegationSettings object."
author: "garchiro7"
ms.date: 02/01/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Get delegationSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [delegationSettings](../resources/delegationsettings.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "delegationsettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegationsettings-get-permissions.md)]

## HTTP request

To get details about a specific delegator:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/communications/callSettings/delegators/{delegatorId}
GET /users/{userId}/communications/callSettings/delegators/{delegatorId}
```

To get details about a specific delegate:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/communications/callSettings/delegates/{delegateId}
GET /users/{userId}/communications/callSettings/delegates/{delegateId}
```

## Optional query parameters

This method doesn't support OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [delegationSettings](../resources/delegationsettings.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_delegationsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/communications/callSettings/delegates/62de48e1-a72c-40db-9193-a3bd8cf167c9
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-delegationsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-delegationsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-delegationsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-delegationsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-delegationsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-delegationsettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegationSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegationSettings",
  "id": "62de48e1-a72c-40db-9193-a3bd8cf167c9",
  "createdDateTime": "2025-01-01T00:00:00Z",
  "isActive": true,
  "allowedActions": {
    "@odata.type": "microsoft.graph.delegateAllowedActions",
    "makeCalls": true,
    "receiveCalls": true,
    "manageCallAndDelegateSettings": true,
    "pickUpHeldCalls": true,
    "joinActiveCalls": false
  }
}
```
