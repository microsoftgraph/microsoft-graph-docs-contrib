---
title: "itemPhone resource type"
description: "itemPhone resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemPhone resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about phone numbers associated with a user in various services.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List phones](../api/profile-list-phones.md)|[itemPhone](../resources/itemphone.md) collection|Get the itemPhones from the phones navigation property.|
|[Create phones](../api/profile-post-phones.md)|[itemPhone](../resources/itemphone.md)|Create a new phones object.|
|[Get itemPhone](../api/itemphone-get.md)|[itemPhone](../resources/itemphone.md)|Read the properties and relationships of an [itemPhone](../resources/itemphone.md) object.|
|[Update itemPhone](../api/itemphone-update.md)|[itemPhone](../resources/itemphone.md)|Update the properties of an [itemPhone](../resources/itemphone.md) object.|
|[Delete itemPhone](../api/itemphone-delete.md)|None|Deletes an [itemPhone](../resources/itemphone.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md)|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md)|
|displayName|String|Friendly name the user has assigned this phone number. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md)|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md)|
|number|String|Phone number provided by the user.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md)|
|type|phoneType|The type of phone number within the object. Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemPhone",
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
  "displayName": "Car Phone",
  "type": "other",
  "number": "+7 499 234 56 78"
}
```
