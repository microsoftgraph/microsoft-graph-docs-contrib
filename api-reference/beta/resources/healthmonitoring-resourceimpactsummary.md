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
|impactedCount|String|The count of resources impacted. The count could be an exhaustive count or a sampling count.|
|impactedCountLimitExceeded|Boolean|A flag indicating if the impactedCount is exhaustive or a sampling.|
|resourceType|String|Shows the type of resource that was impacted.|

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

