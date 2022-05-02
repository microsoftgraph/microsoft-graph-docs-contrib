---
title: "unifiedGroupSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedGroupSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSource](../resources/security-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedGroupSources](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get a list of the [unifiedGroupSource](../resources/security-unifiedgroupsource.md) objects and their properties.|
|[Create unifiedGroupSource](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[Get unifiedGroupSource](../api/security-unifiedgroupsource-get.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Read the properties and relationships of an [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[Update unifiedGroupSource](../api/security-unifiedgroupsource-update.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Update the properties of an [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[Delete unifiedGroupSource](../api/security-ediscoverycustodian-delete-unifiedgroupsources.md)|None|Deletes an [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[List group](../api/ediscovery-unifiedgroupsource-list-group.md)|[microsoft.graph.group](../resources/group.md) collection|Get the group resources from the group navigation property.|
|[Add group](../api/security-unifiedgroupsource-post-group.md)|[microsoft.graph.group](../resources/group.md)|Add group by posting to the group collection.|
|[Remove group](../api/security-unifiedgroupsource-delete-group.md)|None|Remove a [group](../resources/group.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSource](../resources/security-datasource.md).The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|includedSources|sourceType|**TODO: Add Description**.The possible values are: `mailbox`, `site`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.unifiedGroupSource",
  "baseType": "microsoft.graph.security.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unifiedGroupSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "includedSources": "String"
}
```

