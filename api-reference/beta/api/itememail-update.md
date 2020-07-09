---
title: "Update itememail"
description: "Update the properties of an itemEmail object in a user's profile."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update itememail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [itemEmail](../resources/itememail.md) object in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All          |
| Application                            | User.ReadWrite.All                          |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /user/{userId}/profile/emails/{itemEmailId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [itemEmail](../resources/itememail.md) object.

The following table shows the properties that are possible to set when you update the [itemEmail](../resources/itememail.md) object.

|Property|Type|Description|
|:---|:---|:---|
|address|String|The email address itself.|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|displayName|String|The name or label a user has associated with a particular email address.|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md)|
|type|emailType|The type of email address represented by the entity. Possible values are: `unknown`, `work`, `personal`, `main`, `other`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [itemEmail](../resources/itememail.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_itememail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/{userId}/profile/emails/{itemEmailId}
Content-Type: application/json
Content-length: 383

{
  "displayName": "Innocenty Popov",
  "type": "work"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "id": "e13f7a4d-303c-464f-a6af-80ea18eb74f3",
  "allowedAudiences": "organization",
  "inference": null,
  "createdDateTime": "2020-07-06T06:34:12.2294868Z",
  "createdBy": {
    "user": {
        "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
        "displayName": "Innocenty Popov"
    }
  },
  "lastModifiedDateTime": "2020-07-08T06:34:12.2294868Z",
  "lastModifiedBy": {
    "user": {
        "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
        "displayName": "Innocenty Popov"
    }
  },
  "source": {
    "type": "User"
  },
  "address": "innocenty.popov@adventureworks.com",
  "displayName": "Innocenty Popov",
  "type": "work"
}
```
