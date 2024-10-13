---
title: "enrichment resource type"
description: "Represents more context for an alert in Microsoft Entra Health monitoring."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# enrichment resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents more context for an [alert](../resources/healthmonitoring-alert.md) in Microsoft Entra Health monitoring.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|impacts|[microsoft.graph.healthMonitoring.resourceImpactSummary](../resources/healthmonitoring-resourceimpactsummary.md) collection|A collection of resource impact summaries that gives a high level view of the kind of resources that were impacted and to what degree.|
|state|microsoft.graph.healthMonitoring.enrichmentState|The current enrichment state of the alert. The possible values are: `none`, `inProgress`, `enriched`, `unknownFutureValue`.|
|supportingData|[microsoft.graph.healthMonitoring.supportingData](../resources/healthmonitoring-supportingdata.md)|A collection of supportingData locations that can be queried for debugging the alert.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.healthMonitoring.enrichment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.enrichment",
  "state": "String",
  "impacts": [
    {
      "@odata.type": "microsoft.graph.healthMonitoring.resourceImpactSummary"
    }
  ],
  "supportingData": {
    "@odata.type": "microsoft.graph.healthMonitoring.supportingData"
  }
}
```

