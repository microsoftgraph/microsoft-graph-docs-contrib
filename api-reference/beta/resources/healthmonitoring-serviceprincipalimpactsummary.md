---
title: "servicePrincipalImpactSummary resource type"
description: "Represent a summary of an impacted resource in service principal type."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-health-monitoring"
doc_type: resourcePageType
---

# servicePrincipalImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a summary of an impacted resource in service principal type.


Inherits from [microsoft.graph.healthMonitoring.directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The count of resources impacted. This may be an exhaustive count or a sampling. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|impactedCountLimitExceeded|Boolean|A flag indicating if the impactedCount is exhaustive or a sampling. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|resourceType|String|The type of resource that was impacted. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceSampling|[microsoft.graph.directoryObject](../resources/directoryobject.md) collection|A collection of resources that were impacted. Inherited from [microsoft.graph.healthMonitoring.directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.healthMonitoring.servicePrincipalImpactSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.servicePrincipalImpactSummary",
  "resourceType": "String",
  "impactedCount": "String",
  "impactedCountLimitExceeded": "Boolean"
}
```

