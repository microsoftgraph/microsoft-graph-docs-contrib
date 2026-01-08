---
title: "List delegators"
description: "Get a list of all delegators for a user."
author: "garchiro7"
ms.date: 02/01/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# List delegators

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all delegators for a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "callsettings_list_delegators" } -->
[!INCLUDE [permissions-table](../includes/permissions/callsettings-list-delegators-permissions.md)]

## HTTP request

To list all delegators for the signed-in user (`/me`) or a specific user (`/users/{userId}/`):

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/communications/callSettings/delegators
GET /users/{userId}/communications/callSettings/delegators
```

## Optional query parameters

This method supports the `filter` and `count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Scenario|Parameter|Example|
|:---|:---|:---|
|Get the delegators who granted the signed-in user permission to perform calls.|`$filter`|`GET /me/communications/callSettings/delegators?$filter=allowedActions/makeCalls eq true`|
|Get the number of delegators configured for the signed-in user.|`$count`|`GET /me/communications/callSettings/delegators?$count=true`|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegationSettings](../resources/delegationsettings.md) objects in the response body.

## Examples

### Example 1: Get all delegators

The following example shows how to get all delegators for the signed-in user (`me`).

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegationsettings_delegators"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/communications/callSettings/delegators
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegationsettings-delegators-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegationsettings-delegators-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegationsettings-delegators-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegationsettings-delegators-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegationsettings-delegators-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegationsettings-delegators-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegationSettings)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
    },
    {
      "@odata.type": "#microsoft.graph.delegationSettings",
      "id": "739cfec7-7956-409a-a1c8-a76daab23c2a",
      "createdDateTime": "2025-02-01T00:00:00Z",
      "isActive": true,
      "allowedActions": {
        "@odata.type": "microsoft.graph.delegateAllowedActions",
        "makeCalls": false,
        "receiveCalls": true,
        "manageCallAndDelegateSettings": true,
        "pickUpHeldCalls": true,
        "joinActiveCalls": false
      }
    }
  ]
}
```

### Example 2: Get all delegators who are able to make calls

The following example shows how to get all delegators who area able to make calls.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegationsettings_delegators_filter_makecalls"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/communications/callSettings/delegators?filter=allowedActions/makeCalls eq true 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegationsettings-delegators-filter-makecalls-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegationsettings-delegators-filter-makecalls-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegationsettings-delegators-filter-makecalls-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegationsettings-delegators-filter-makecalls-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegationsettings-delegators-filter-makecalls-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegationsettings-delegators-filter-makecalls-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegationSettings)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
