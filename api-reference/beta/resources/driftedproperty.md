---
title: "driftedProperty resource type"
description: "Represents properties that drift from their desired configuration, providing details about the current and desired values to help admins resolve configuration issues."
author: "swatya"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# driftedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties that drift from their desired configuration, providing details about the current and desired values to help admins resolve configuration issues.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentValue|[Json](../resources/json.md)|The current value of the property.|
|desiredValue|[Json](../resources/json.md)|The desired value of the property as specified by admins in the baseline of the monitor body.|
|propertyName|String|The name of the property.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driftedProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driftedProperty",
  "currentValue": {"@odata.type": "microsoft.graph.Json"},
  "desiredValue": {"@odata.type": "microsoft.graph.Json"},
  "propertyName": "String"
}
```

