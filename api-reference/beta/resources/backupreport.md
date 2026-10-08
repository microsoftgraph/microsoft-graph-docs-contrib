---
title: "backupReport resource type"
description: "Represents an abstract backup report."
author: "rigera"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# backupReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract backup report. This resource can't be instantiated directly.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get statistics by policy](../api/backupreport-getstatisticsbypolicy.md)|[backupPolicyReport](../resources/backuppolicyreport.md)|Get the statistics that correspond to the specified policy ID of a [backupPolicyReport](../resources/backuppolicyreport.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the backup report. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.backupReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.backupReport",
  "id": "String (identifier)"
}
```
