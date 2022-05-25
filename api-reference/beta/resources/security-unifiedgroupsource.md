---
title: "unifiedGroupSource resource type"
description: "The container for a custodian's group."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# unifiedGroupSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a custodian's group.

Inherits from [dataSource](../resources/security-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedGroupSources](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get a list of the [unifiedGroupSource](../resources/security-unifiedgroupsource.md) objects and their properties.|
|[Create unifiedGroupSource](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[Get unifiedGroupSource](../api/security-unifiedgroupsource-get.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Read the properties and relationships of an [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|
|[Delete unifiedGroupSource](../api/security-ediscoverycustodian-delete-unifiedgroupsources.md)|None|Deletes an [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **unifiedGroupSource**.|
|createdDateTime|DateTimeOffset|The date and time the **unifiedGroupSource** was created.|
|displayName|String|The display name of the unified group - This is the name of the group.|
|id|String|The ID of the **unifiedGroupSource**. This is not the ID of the actual group.|
|includedSources|sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|
|holdStatus|dataSourceHoldStatus|The hold status of the **unifiedGroupSource**.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|Represent a group.|

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

