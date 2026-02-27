---
title: "unifiedGroupSource resource type"
description: "The container for a custodian's group."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# unifiedGroupSource resource type

Namespace: microsoft.graph.security



The container for a custodian's group.

Inherits from [dataSource](../resources/security-datasource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycustodian-list-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md) collection|Get a list of the [unifiedGroupSource](../resources/security-unifiedgroupsource.md) objects associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Create](../api/security-ediscoverycustodian-post-unifiedgroupsources.md)|[microsoft.graph.security.unifiedGroupSource](../resources/security-unifiedgroupsource.md)|Create a new [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|
|[Delete](../api/security-unifiedgroupsource-delete.md)|None|Delete a [unifiedGroupSource](../resources/security-unifiedgroupsource.md) object associated with an [ediscoveryCustodian](../resources/security-ediscoverycustodian.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **unifiedGroupSource**.|
|createdDateTime|DateTimeOffset|The date and time the **unifiedGroupSource** was created.|
|displayName|String|The display name of the unified group, which is the name of the group.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **unifiedGroupSource**. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|id|String|The ID of the **unifiedGroupSource**. This isn't the ID of the actual group.|
|includedSources|microsoft.graph.security.sourceType|Specifies which sources are included in this group. The possible values are: `mailbox`, `site`.|


### sourceType values
|Member|Description|
|:----|-----------|
| mailbox | Represents a mailbox.|
| site | Represents a SharePoint site.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|Represents a group.|

## JSON representation
The following JSON representation shows the resource type.
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

