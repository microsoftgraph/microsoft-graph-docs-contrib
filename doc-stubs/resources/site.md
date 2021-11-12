---
title: "site resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# site resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseItem](../resources/baseitem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sites](../api/site-list.md)|[site](../resources/site.md) collection|Get a list of the [site](../resources/site.md) objects and their properties.|
|[Create site](../api/site-post-sites.md)|[site](../resources/site.md)|Create a new [site](../resources/site.md) object.|
|[Get site](../api/site-get.md)|[site](../resources/site.md)|Read the properties and relationships of a [site](../resources/site.md) object.|
|[Update site](../api/site-update.md)|[site](../resources/site.md)|Update the properties of a [site](../resources/site.md) object.|
|[Delete site](../api/site-delete.md)|None|Deletes a [site](../resources/site.md) object.|
|[List operations](../api/site-list-operations.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md) collection|Get the richLongRunningOperation resources from the operations navigation property.|
|[Create richLongRunningOperation](../api/site-post-operations.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Create a new richLongRunningOperation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|deleted|[deleted](../resources/deleted.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|displayName|String|**TODO: Add Description**|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|root|[root](../resources/root.md)|**TODO: Add Description**|
|sharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description**|
|siteCollection|[siteCollection](../resources/sitecollection.md)|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|analytics|[itemAnalytics](../resources/itemanalytics.md)|**TODO: Add Description**|
|columns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|contentTypes|[contentType](../resources/contenttype.md) collection|**TODO: Add Description**|
|createdByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|drive|[drive](../resources/drive.md)|**TODO: Add Description**|
|drives|[drive](../resources/drive.md) collection|**TODO: Add Description**|
|externalColumns|[columnDefinition](../resources/columndefinition.md) collection|**TODO: Add Description**|
|items|[baseItem](../resources/baseitem.md) collection|**TODO: Add Description**|
|lastModifiedByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|lists|[list](../resources/list.md) collection|**TODO: Add Description**|
|onenote|[onenote](../resources/onenote.md)|**TODO: Add Description**|
|operations|[richLongRunningOperation](../resources/richlongrunningoperation.md) collection|**TODO: Add Description**|
|pages|[sitePage](../resources/sitepage.md) collection|**TODO: Add Description**|
|permissions|[permission](../resources/permission.md) collection|**TODO: Add Description**|
|sites|[site](../resources/site.md) collection|**TODO: Add Description**|
|termStore|[store](../resources/store.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.site",
  "baseType": "microsoft.graph.baseItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.site",
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
  "deleted": {
    "@odata.type": "microsoft.graph.deleted"
  },
  "displayName": "String",
  "root": {
    "@odata.type": "microsoft.graph.root"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "siteCollection": {
    "@odata.type": "microsoft.graph.siteCollection"
  }
}
```

