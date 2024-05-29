---
title: "retentionSetting resource type"
description: "Details of all the retention settings for the Protection Policy"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# retentionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of all the retention settings for the Protection Policy.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|interval|String|Frequency of the backup.|
|period|Duration|Period to retain the protected data for single Microsoft 365 service.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.retentionSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.retentionSetting",
  "interval": "String",
  "period": "String (duration)"
}
```
