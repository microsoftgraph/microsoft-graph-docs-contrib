---
title: "resourceImpactSummary resource type"
description: "Represent a summary of an impacted resource type."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# resourceImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a summary of an impacted resource type.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The number of resources impacted. The number could be an exhaustive count or a sampling count.|
|impactedCountLimitExceeded|Boolean|Indicates whether **impactedCount** is exhaustive or a sampling. When this value is "true," the limit was exceeded and **impactedCount** represents a sampling. Otherwise, **impactedCount** represents the true number of impacts.|
|resourceType|String|The type of resource that was impacted.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.healthMonitoring.resourceImpactSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.resourceImpactSummary",
  "resourceType": "String",
  "impactedCount": "Integer",
  "impactedCountLimitExceeded": "Boolean"
}
```

