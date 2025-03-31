---
title: "directoryObjectImpactSummary resource type"
description: "Represents a summary of an impacted resource in the directory object type."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 10/09/2024
---

# directoryObjectImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of an impacted resource in the directory (Microsoft Entra ID) object type.
This type is an abstract type from which the following resources inherit:
- [applicationImpactSummary](../resources/healthmonitoring-applicationimpactsummary.md)
- [deviceImpactSummary](../resources/healthmonitoring-deviceimpactsummary.md)
- [groupImpactSummary](../resources/healthmonitoring-groupimpactsummary.md)
- [servicePrincipalImpactSummary](../resources/healthmonitoring-serviceprincipalimpactsummary.md)
- [userImpactSummary](../resources/healthmonitoring-userimpactsummary.md)

Inherits from [resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The number of resources impacted. The number could be an exhaustive count or a sampling count. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|impactedCountLimitExceeded|Boolean|Indicates whether **impactedCount** is exhaustive or a sampling. When this value is "true," the limit was exceeded and **impactedCount** represents a sampling. Otherwise, **impactedCount** represents the true number of impacts. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|
|resourceType|String|The type of resource that was impacted. Examples include `user`, `group`, `application`, `servicePrincipal`, `device`. Inherited from [microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|resourceSampling|[microsoft.graph.directoryObject](../resources/directoryobject.md) collection|The collection of sampling resources that were impacted. Supports $expand.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.healthMonitoring.directoryObjectImpactSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.directoryObjectImpactSummary",
  "resourceType": "String",
  "impactedCount": "Integer",
  "impactedCountLimitExceeded": "Boolean"
}
```

