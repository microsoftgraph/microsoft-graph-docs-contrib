---
title: "nistClassification resource type"
description: "Represents a mapping of a Microsoft Entra recommendation to a NIST Cybersecurity Framework (CSF) 2.0 category."
author: "sanchariroy9197"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2026
---

# nistClassification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping of a Microsoft Entra ID [recommendation](../resources/recommendation.md) to a NIST Cybersecurity Framework (CSF) 2.0 category. A recommendation can map to one or more NIST CSF 2.0 categories through its **nistClassifications** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|String|The NIST CSF 2.0 category name, for example `Adverse Event Analysis`.|
|description|String|A description of the NIST CSF 2.0 category.|
|function|String|The NIST CSF 2.0 function, for example `Detect (DE)`.|
|name|String|The NIST CSF 2.0 category identifier, for example `DE.AE`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.nistClassification",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.nistClassification",
  "function": "String",
  "category": "String",
  "name": "String",
  "description": "String"
}
```
