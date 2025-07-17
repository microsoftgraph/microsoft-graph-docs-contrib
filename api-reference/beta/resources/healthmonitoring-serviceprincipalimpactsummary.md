---
title: "servicePrincipalImpactSummary resource type"
description: "Represents a summary of an impacted service principal resource type for an alert in Microsoft Entra Health monitoring."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 10/09/2024
---

# servicePrincipalImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of an impacted service principal resource type for an alert in Microsoft Entra Health monitoring.


Inherits from [directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The number of resources impacted. The number could be an exhaustive count or a sampling count. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|impactedCountLimitExceeded|Boolean|Indicates whether **impactedCount** is exhaustive or a sampling. When this value is "true," the limit was exceeded and **impactedCount** represents a sampling. Otherwise, **impactedCount** represents the true number of impacts. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|resourceType|String|The type of resource that was impacted, which is `servicePrincipal`. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceSampling|[microsoft.graph.directoryObject](../resources/directoryobject.md) collection|The collection of sampling resources that were impacted. Inherited from [microsoft.graph.healthMonitoring.directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md)|

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
  "impactedCount": "Integer",
  "impactedCountLimitExceeded": "Boolean"
}
```

