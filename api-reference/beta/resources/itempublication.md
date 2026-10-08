---
title: "itemPublication resource type"
description: "itemPublication resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# itemPublication resource type

Namespace: microsoft.graph

Represents a publication or article that has been associated with a user's [profile](../resources/profile.md).

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/profile-list-publications.md)|[itemPublication](../resources/itempublication.md) collection|Get the itemPublication resources from the publications navigation property.|
|[Create](../api/profile-post-publications.md)|[itemPublication](../resources/itempublication.md)|Create a new itemPublication object.|
|[Get](../api/itempublication-get.md)|[itemPublication](../resources/itempublication.md)|Read the properties and relationships of an [itemPublication](../resources/itempublication.md) object.|
|[Update](../api/itempublication-update.md)|[itemPublication](../resources/itempublication.md)|Update the properties of an [itemPublication](../resources/itempublication.md) object.|
|[Delete](../api/itempublication-delete.md)|None|Deletes an [itemPublication](../resources/itempublication.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). The possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description    |String      |Description of the publication.                   |
|displayName    |String      |Title of the publication.                         |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|publishedDate  |Date        |The date that the publication was published.      |
|publisher      |String      |Publication or publisher for the publication.     |
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|thumbnailUrl   |String      |URL referencing a thumbnail of the publication.   |
|webUrl         |String      |URL referencing the publication.                  |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemPublication",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.itemPublication",
  "id": "String (identifier)",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSource"
  },
  "description": "String",
  "displayName": "String",
  "publishedDate": "Date",
  "publisher": "String",
  "thumbnailUrl": "String",
  "webUrl": "String"
}
```


