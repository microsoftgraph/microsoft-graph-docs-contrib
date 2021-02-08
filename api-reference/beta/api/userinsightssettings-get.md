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

Here is an example of the request to get user insight settings.

<!-- {
  "blockType": "request",
  "name": "get_userInsightsSettings"
}-->

```http
GET https://graph.microsoft.com/beta/me/settings/itemInsights
```


##### Response

Here is an example of the response. 
> **Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userInsightsSettings",
  "name": "get_userInsightsSettings"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "isEnabled": true
}
```


