---
title: "baselineResource resource type"
description: "**The baseline can contain 1 or more resources.**"
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# baselineResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The baseline is a complex object containing the details of at least one resource and at least one property associated to the resource that the admin wants to monitor via the configurationMonitor object. The baselineResources is a collection of resources and its properties added to the baseline [At least one property of one resource must be present in the baseline].

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique name of the resource|
|properties|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Properties of a resource supported by UTCM|
|resourceType|String|Name of the resourceType|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.baselineResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.baselineResource",
  "displayName": "String",
  "resourceType": "String",
  "properties": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  }
}
```