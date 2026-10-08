---
title: "baselineParameter resource type"
description: "Represents the information and properties of a baselineParameter object."
author: "swatya"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# baselineParameter resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [baselineParameter](../resources/baselineparameter.md) object. 

Parameterization is the practice of abstracting tenant-specific values into parameters that are provided during tenant monitoring. Using parameters in a [configurationBaseline](../resources/configurationbaseline.md) allows administrators to create one baseline object that can be used to monitor multiple tenants. 

Users are responsible for parameterizing their **configurationBaseline** objects if they want to use the baseline on multiple tenants. They must also define the necessary parameters themselves. Multiple parameters can be defined in a **configurationBaseline**. However, if baseline parameters aren't used within the **configurationBaseline**, those parameters are considered invalid, and users should avoid defining unused parameters.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|User-friendly description of the parameter.|
|displayName|String|Parameter names such as `FQDN` and `Tenant ID`.|
|parameterType|baselineParameterType|The type of the **baselineParameter**. The possible values are: `string`, `integer`, `boolean`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.baselineParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baselineParameter",
  "description": "String",
  "displayName": "String",
  "parameterType": "String"
}
```
