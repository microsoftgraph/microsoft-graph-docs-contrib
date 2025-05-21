---
title: "driftedProperty resource type"
description: "Represents properties that are drifted from their desired configuration, providing details about the current and desired values to help admins resolve configuration issues."
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# driftedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The driftedProperties give admins clarity around where exactly the drifts or deviations are and what its current and desired values are. It helps admins with all the information needed for them to fix the drifts and get their tenant configuration in the desired state.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentValue|[Json](../resources/json.md)|It's the current/existing value of the property.|
|desiredValue|[Json](../resources/json.md)|It's the desired value of the property as mentioned by admins in the baseline of the monitor body|
|propertyName|String|It's the name of the property|

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
  "propertyName": "String",
  "currentValue": {
    "@odata.type": "microsoft.graph.Json"
  },
  "desiredValue": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```

