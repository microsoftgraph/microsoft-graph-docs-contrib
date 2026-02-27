---
title: "baselineResource resource type"
description: "Represents the information and properties of a baselineResource object."
author: "swatya"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# baselineResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [baselineResource](../resources/baselineresource.md) object. The baseline is a complex object that contains details of at least one resource and one property associated with the resource that the admin wants to monitor via the [configurationMonitor](../resources/configurationmonitor.md) object. The baseline resources are a collection of resources and their properties added to the baseline. At least one property of one resource must be included in the baseline.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique name of the resource.|
|properties|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Properties of a resource supported by unified tenant configuration management.|
|resourceType|String|Name of the resource type.|

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
  "properties": {"@odata.type": "microsoft.graph.openComplexDictionaryType"},
  "resourceType": "String"
}
```
