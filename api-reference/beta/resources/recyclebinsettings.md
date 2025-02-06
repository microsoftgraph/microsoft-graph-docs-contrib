---
title: "recycleBinSettings resource type"
description: "Settings for the recycle bin resource type."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 09/26/2024
---

# recycleBinSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for the [recycleBin](recyclebin.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|retentionPeriodOverrideDays|Int32|Recycle bin retention period override in days for deleted content. The default value is `93`; the value range is `7` to `180` inclusively. The setting applies to newly deleted content only. Setting this property to `null` reverts to its default value. Read-write.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recycleBinSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recycleBinSettings",
  "retentionPeriodOverrideDays": "int32"
}
```
