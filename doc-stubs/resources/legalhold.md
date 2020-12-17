---
title: "legalhold resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# legalhold resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List legalholds](../api/legalhold-list.md)|[legalhold](../resources/legalhold.md) collection|Get a list of the [legalhold](../resources/legalhold.md) objects and their properties.|
|[Create legalhold](../api/legalhold-create.md)|[legalhold](../resources/legalhold.md)|Create a new [legalhold](../resources/legalhold.md) object.|
|[Get legalhold](../api/legalhold-get.md)|[legalhold](../resources/legalhold.md)|Read the properties and relationships of a [legalhold](../resources/legalhold.md) object.|
|[Update legalhold](../api/legalhold-update.md)|[legalhold](../resources/legalhold.md)|Update the properties of a [legalhold](../resources/legalhold.md) object.|
|[Delete legalhold](../api/legalhold-delete.md)|None|Deletes a [legalhold](../resources/legalhold.md) object.|
|[List siteSources](../api/legalhold-list-sitesources.md)|[siteSource](../resources/sitesource.md) collection|Get the siteSource resources from the siteSources navigation property.|
|[Create siteSource](../api/legalhold-post-sitesources.md)|[siteSource](../resources/sitesource.md)|Create a new siteSource object.|
|[List unifiedGroupSources](../api/legalhold-list-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSource](../api/legalhold-post-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new unifiedGroupSource object.|
|[List userSources](../api/legalhold-list-usersources.md)|[userSource](../resources/usersource.md) collection|Get the userSource resources from the userSources navigation property.|
|[Create userSource](../api/legalhold-post-usersources.md)|[userSource](../resources/usersource.md)|Create a new userSource object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|errors|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|isEnabled|Boolean|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|legalHoldStatus|**TODO: Add Description**. Possible values are: `Pending`, `Error`, `Success`, `UnknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[siteSource](../resources/sitesource.md) collection|**TODO: Add Description**|
|unifiedGroupSources|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|**TODO: Add Description**|
|userSources|[userSource](../resources/usersource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.legalhold",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.legalhold",
  "id": "String (identifier)",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isEnabled": "Boolean",
  "status": "String",
  "contentQuery": "String",
  "errors": [
    "String"
  ],
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

