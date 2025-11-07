---
title: "structuredDataEntry resource type"
description: "Represents the key-value pair of UserConfiguration objects."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: resourcePageType
---

# structuredDataEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single key-value pair of User Configuration objects. Both `keyEntry` and `valueEntry` are of type [structuredDataEntryTypedValue](../resources/structureddataentrytypedvalue.md).

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

