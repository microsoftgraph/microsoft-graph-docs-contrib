---
title: "itemEmail resource type"
description: "itemEmail resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemEmail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about email addresses associated with the user.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List emails](../api/profile-list-emails.md)|[itemEmail](../resources/itememail.md) collection|Get the itemEmails from the emails navigation property.|
|[Create emails](../api/profile-post-emails.md)|[itemEmail](../resources/itememail.md)|Create a new emails object.|
|[Get itemEmail](../api/itememail-get.md)|[itemEmail](../resources/itememail.md)|Read the properties and relationships of an [itemEmail](../resources/itememail.md) object.|
|[Update itemEmail](../api/itememail-update.md)|[itemEmail](../resources/itememail.md)|Update the properties of an [itemEmail](../resources/itememail.md) object.|
|[Delete itemEmail](../api/itememail-delete.md)|None|Deletes an [itemEmail](../resources/itememail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|address|String|The email address itself.|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md)|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md)|
|displayName|String|The name or label a user has associated with a particular email address.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md)|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md)|
|type|emailType|The type of email address represented by the entity. Possible values are: `unknown`, `work`, `personal`, `main`, `other`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemEmail",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->

``` json
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
