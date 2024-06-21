---
title: "applicationImpactSummary resource type"
description: "Represents a summary of an impacted resource in application type."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# applicationImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of an impacted resource in application type.


Inherits from [microsoft.graph.healthMonitoring.directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The count of resources impacted. The count could be an exhaustive count or a sampling count. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|impactedCountLimitExceeded|Boolean|A flag indicating if the impactedCount is exhaustive or a sampling. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|resourceType|String|Shows the type of resource that was impacted. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceSampling|[microsoft.graph.directoryObject](../resources/directoryobject.md) collection|Shows a collection of sampling resources that were impacted. Inherited from [microsoft.graph.healthMonitoring.directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.healthMonitoring.applicationImpactSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.applicationImpactSummary",
  "resourceType": "String",
  "impactedCount": "Integer",
  "impactedCountLimitExceeded": "Boolean"
}
```

