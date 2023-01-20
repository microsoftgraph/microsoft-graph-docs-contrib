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



The container for a custodian's group.

Inherits from [dataSource](../resources/security-datasource.md).

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **unifiedGroupSource**.|
|createdDateTime|DateTimeOffset|The date and time the **unifiedGroupSource** was created.|
|displayName|String|The display name of the unified group, which is the name of the group.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **unifiedGroupSource**. The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|id|String|The ID of the **unifiedGroupSource**. This is not the ID of the actual group.|
|includedSources|microsoft.graph.security.sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|


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

