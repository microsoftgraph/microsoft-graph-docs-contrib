---
title: "drive resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# drive resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseItem](../resources/baseitem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List drives](../api/drive-list.md)|[drive](../resources/drive.md) collection|Get a list of the [drive](../resources/drive.md) objects and their properties.|
|[Create drive](../api/drive-post-drives.md)|[drive](../resources/drive.md)|Create a new [drive](../resources/drive.md) object.|
|[Get drive](../api/drive-get.md)|[drive](../resources/drive.md)|Read the properties and relationships of a [drive](../resources/drive.md) object.|
|[Update drive](../api/drive-update.md)|[drive](../resources/drive.md)|Update the properties of a [drive](../resources/drive.md) object.|
|[Delete drive](../api/drive-delete.md)|None|Deletes a [drive](../resources/drive.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|driveType|String|**TODO: Add Description**|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|owner|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|quota|[quota](../resources/quota.md)|**TODO: Add Description**|
|sharePointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description**|
|system|[systemFacet](../resources/systemfacet.md)|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[itemActivityOLD](../resources/itemactivityold.md) collection|**TODO: Add Description**|
|bundles|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|createdByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|following|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|items|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|lastModifiedByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|list|[list](../resources/list.md)|**TODO: Add Description**|
|recommendedItemsConsumer|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|root|[driveItem](../resources/driveitem.md)|**TODO: Add Description**|
|special|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.drive",
  "baseType": "microsoft.graph.baseItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.drive",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "eTag": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "driveType": "String",
  "owner": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "quota": {
    "@odata.type": "microsoft.graph.quota"
  },
  "sharePointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "system": {
    "@odata.type": "microsoft.graph.systemFacet"
  }
}
```

