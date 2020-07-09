---
title: "Create itemEmail"
description: "Create a new itemEmail."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create itemEmail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [itemEmail](../resources/itememail.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All          |
| Application                            | User.ReadWrite.All                          |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/profile/emails
POST /users/{id | userPrincipalName}/profile/emails
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [itemEmail](../resources/itememail.md) object.

The following table shows the properties that are possible to set when you create the [itemEmail](../resources/itememail.md) object.

|Property|Type|Description|
|:---|:---|:---|
|address|String|The email address itself.|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|displayName|String|The name or label a user has associated with a particular email address.|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md)|
|type|emailType|The type of email address represented by the entity. Possible values are: `unknown`, `work`, `personal`, `main`, `other`.|


## Response

If successful, this method returns a `201 Created` response code and an [itemEmail](../resources/itememail.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_itememail_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/profile/emails
Content-Type: application/json
Content-length: 383

{
  "address": "innocenty.popov@adventureworks.com",
  "displayName": "Innocenty Popov",
  "type": "work"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.itememail"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json
{
  "address": "innocenty.popov@adventureworks.com",
  "displayName": "Innocenty Popov",
  "type": "work"
}
```
