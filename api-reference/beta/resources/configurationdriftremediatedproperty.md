---
title: "configurationDriftRemediatedProperty resource type"
description: "Represents a drifted property that was successfully restored to its desired value."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# configurationDriftRemediatedProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a drifted property that was successfully restored to its desired value.

Appears in the **remediatedProperties** collection of a [configurationDriftRemediationResult](../resources/configurationdriftremediationresult.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|currentValue|Json|The value of the property after remediation.|
|desiredValue|Json|The desired value of the property in the baseline.|
|previousValue|Json|The value of the property before remediation.|
|propertyName|String|The name of the remediated property.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationDriftRemediatedProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationDriftRemediatedProperty",
  "propertyName": "String",
  "previousValue": {
    "@odata.type": "microsoft.graph.Json"
  },
  "currentValue": {
    "@odata.type": "microsoft.graph.Json"
  },
  "desiredValue": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
