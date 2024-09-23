---
title: "recycleBinSettings resource type"
description: "Settings for the recycle bin resource type."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# recycleBinSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for the recycleBin resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|retentionPeriodOverrideDays|Int32|Recycle bin retention period override in days for deleted content. **Note** This property is set at a default value of 93 and is valid for values from 93 to 180, and applies to newly deleted content only. Setting this property to `null` reverts to its default value. Read-write.|

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
  "retentionPeriodOverrideDays": "Integer"
}
```