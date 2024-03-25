---
title: "List trendingAround"
description: "Calculated insight that returns the list of items trending around a user."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# List trendingAround

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Calculated insight that returns the list of items trending around a user.

**Note:** This API will be deprecated and replaced by the [Trending API](../resources/insights-trending.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_trendingaround" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-trendingaround-permissions.md)]

## HTTP request
```http
GET /me/trendingAround
GET /users/{id | userPrincipalName}/trendingAround
GET /drive/root/createdByUser/trendingAround
GET /drive/root/lastModifiedByUser/trendingAround
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Header         | Value                      |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json           |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a 200 OK response code and collection of [driveItem](../resources/driveitem.md) objects in the response body.

## Example
##### Request
```http
GET https://graph.microsoft.com/beta/me/trendingAround
```
##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "name": "name-value",
  "DateTimeCreated": "DateTimeCreated-value",
  "DateTimeLastModified": "DateTimeLastModified-value",
  "webUrl": "webUrl-value",
}
```
