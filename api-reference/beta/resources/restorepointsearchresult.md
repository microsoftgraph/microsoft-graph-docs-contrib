---
title: "restorePointSearchResult resource type"
description: "Get a list of available Restore Points for provided Protection Units"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restorePointSearchResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of available [restorePoints](../resources/restorepoint.md) for provided [protectionUnits](../resources/protectionunitbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|RestorePoints represent the timestamp when an [artifact](../resources/restoreartifactbase.md) is protected by [protectionPoliy](../resources/protectionpolicy.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.restorePointSearchResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restorePointSearchResult"
}
```

