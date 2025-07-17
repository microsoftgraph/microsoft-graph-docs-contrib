---
title: "restorePointSearchResult resource type"
description: "Contains a list of restorePoint objects associated with a protectionUnit."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# restorePointSearchResult resource type

Namespace: microsoft.graph

Contains a list of [restorePoint](../resources/restorepoint.md) objects associated with a [protectionUnit](../resources/protectionunitbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|artifactHitCount|int| Total number of artifacts restored.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Represents the date and time when an [artifact](../resources/restoreartifactbase.md) is protected by a [protectionPolicy](../resources/protectionpolicybase.md) and can be restored.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restorePointSearchResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restorePointSearchResult",
  "artifactHitCount": "Int"
}
```
