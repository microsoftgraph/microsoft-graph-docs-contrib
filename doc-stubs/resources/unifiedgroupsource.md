---
title: "unifiedGroupSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedGroupSource resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [dataSource](../resources/datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedGroupSources](../api/custodian-list-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get the unifiedGroupSource resources from the unifiedGroupSources navigation property.|
|[Create unifiedGroupSources](../api/custodian-post-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new unifiedGroupSource object.|
|[Update unifiedGroupSources](../api/custodian-update-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Update the properties of an unifiedGroupSources object.|
|[Get unifiedGroupSources](../api/custodian-get-unifiedgroupsource.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Read the properties and relationships of an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[Delete unifiedGroupSources](../api/custodian-delete-unifiedgroupsources.md)|None|Delete an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[List unifiedGroupSources](../api/unifiedgroupsource-list.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get a list of the [unifiedGroupSource](../resources/unifiedgroupsource.md) objects and their properties.|
|[Create unifiedGroupSource](../api/unifiedgroupsource-create.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[Get unifiedGroupSource](../api/unifiedgroupsource-get.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Read the properties and relationships of an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[Update unifiedGroupSource](../api/unifiedgroupsource-update.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Update the properties of an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[Delete unifiedGroupSource](../api/unifiedgroupsource-delete.md)|None|Deletes an [unifiedGroupSource](../resources/unifiedgroupsource.md) object.|
|[List group](../api/unifiedgroupsource-list-group.md)|[group](../resources/group.md) collection|Get the group resources from the group navigation property.|
|[Add group](../api/unifiedgroupsource-post-group.md)|[group](../resources/group.md)|Add group by posting to the group collection.|
|[Remove group](../api/unifiedgroupsource-delete-group.md)|None|Remove a [group](../resources/group.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|displayName|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|id|String|**TODO: Add Description** Inherited from [dataSource](../resources/datasource.md)|
|includedSources|sourceType|**TODO: Add Description**. Possible values are: `mailbox`, `site`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedGroupSource",
  "baseType": "microsoft.compliance.ediscovery.contract.dataSource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedGroupSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "includedSources": "String"
}
```

