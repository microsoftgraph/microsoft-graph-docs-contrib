---
title: "Get userInsightsSettings"
description: "Retrieve properties of userInsightsSettings object"
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: "apiPageType"
---

# Get userInsightsSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of [userInsightsSettings](../resources/userinsightssettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read, User.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/settings/itemInsights
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "ignored" } -->

```http
GET /user/{userId}/settings/itemInsights
```

## Request headers

| Name       | Description|
|:-----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [userInsightsSettings](../resources/userinsightssettings.md) object in the response body.

## Example

##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_userInsightsSettings"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{userId}/settings/itemInsights
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-userInsightsSettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-userInsightsSettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-userInsightsSettings-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-userInsightsSettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response

Here is an example of the response. 
> **Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userinsightssettings",
  "name": "get_userinsightssettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabled": true
}
```


