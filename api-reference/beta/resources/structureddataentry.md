---
title: "structuredDataEntry resource type"
description: "Represents a single key-value pair of userConfiguration objects."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# structuredDataEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single key-value pair of [userConfiguration](../resources/userconfiguration.md) objects.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|keyEntry|[structuredDataEntryTypedValue](../resources/structureddataentrytypedvalue.md)|The key entry.|
|valueEntry|[structuredDataEntryTypedValue](../resources/structureddataentrytypedvalue.md)|The value entry.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.structuredDataEntry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.structuredDataEntry",
  "keyEntry": {
    "@odata.type": "microsoft.graph.structuredDataEntryTypedValue"
  },
  "valueEntry": {
    "@odata.type": "microsoft.graph.structuredDataEntryTypedValue"
  }
}
```

