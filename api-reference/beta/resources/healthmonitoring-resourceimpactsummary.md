---
title: "resourceImpactSummary resource type"
description: "Represent a summary of the impacted resource type for a Microsoft Entra Health monitoring alert."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 10/09/2024
---

# resourceImpactSummary resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a summary of the impacted resource type for a Microsoft Entra Health monitoring [alert](../resources/healthmonitoring-alert.md).

This resource is an abstract type from which the [directoryObjectImpactSummary](../resources/healthmonitoring-directoryobjectimpactsummary.md) resource inherits.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impactedCount|String|The number of resources impacted. The number could be an exhaustive count or a sampling count.|
|impactedCountLimitExceeded|Boolean|Indicates whether **impactedCount** is exhaustive or a sampling. When this value is `true`, the limit was exceeded and **impactedCount** represents a sampling; otherwise, **impactedCount** represents the true number of impacts.|
|resourceType|String|The type of resource that was impacted. Examples include `user`, `group`, `application`, `servicePrincipal`, `device`.|

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

