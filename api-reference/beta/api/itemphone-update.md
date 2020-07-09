---
title: "Update itemphone"
description: "Update the properties of an itemPhone object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update itemphonenumber

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [itemPhone](../resources/itemphone.md) object in a user's [profile](../resources/profile.md).

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
PATCH /me/profile/phones/{itemPhoneId}
PATCH /user/{userId}/profile/phones/{itemPhoneId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [itemPhone](../resources/itemphone.md) object.

The following table shows the properties that are possible to set when you update the [itemPhone](../resources/itemphone.md) object.

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|allowedAudiences|allowedAudiences|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|inference|[inferenceData](../resources/inferencedata.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|source|[personDataSource](../resources/persondatasource.md)|**TODO: Add Description** Inherited from [itemFacet](../resources/itemfacet.md)|
|displayName|String|**TODO: Add Description**|
|type|phoneType|**TODO: Add Description**. Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|
|number|String|**TODO: Add Description**|


## Response

If successful, this method returns a `200 OK` response code and an updated [itemPhone](../resources/itemphone.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_itemphone"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/{userId}/profile/phones/{itemPhoneId}
Content-Type: application/json
Content-length: 382

{
  "allowedAudiences": "organization",
  "type": "other",
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
  "@odata.type": "#microsoft.graph.itemPhone",
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
  "displayName": "Car Phone",
  "type": "other",
  "number": "+7 499 234 56 78"
}
```
