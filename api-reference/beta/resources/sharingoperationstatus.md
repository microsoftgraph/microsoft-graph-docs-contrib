---
title: "sharingOperationStatus resource type"
description: "Represents the status of a particular sharing operation."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# sharingOperationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the status of a particular sharing operation.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|disabledReason|String|Provides a description of why this operation is not enabled. Only returned if this operation is not enabled.|
|enabled|Boolean|Indicates whether this operation is enabled.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharingOperationStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharingOperationStatus",
  "enabled": "Boolean",
  "disabledReason": "String"
}
```
