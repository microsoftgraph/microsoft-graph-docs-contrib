---
title: "alert resource type"
description: "Represents a scenario health monitoring system detected alert for anomalous usage patterns within identity scenarios found in Microsoft Entra tenant."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# alert resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scenario health monitoring system detected alert for anomalous usage patterns within identity scenarios found in Microsoft Entra tenant

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/healthmonitoring-healthmonitoringroot-list-alerts.md)|[microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) collection|Get a list of the [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) objects and their properties.|
|[Get](../api/healthmonitoring-alert-get.md)|[microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md)|Read the properties and relationships of a [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object.|
|[Update](../api/healthmonitoring-alert-update.md)|[microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md)|Update the properties of a [microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertType|microsoft.graph.healthMonitoring.alertType|The alert type is associated with the monitored scenario that generated the alert. The possible values are: `unknown`, `mfaSignInFailure`, `managedDeviceSignInFailure`, `compliantDeviceSignInFailure`, `unknownFutureValue`.|
|category|microsoft.graph.healthMonitoring.category|The category is a classification grouping the scenario. The possible values are: `unknown`, `authentication`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Time that the Alert was generated at.|
|documentation|[microsoft.graph.healthMonitoring.documentation](../resources/healthmonitoring-documentation.md)|Returns a key-value pair containing the name of documentation to aid in investigation of the alert and a link to the documentation.|
|enrichment|[microsoft.graph.healthMonitoring.enrichment](../resources/healthmonitoring-enrichment.md)|Provides helpful investigative information on the alert.|
|id|String|Unique identifier of this alert under the associated tenant. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|scenario|microsoft.graph.healthMonitoring.scenario|The scenario is the area being monitored. Associated with the system that is emitting the source signals. The possible values are: `unknown`, `mfa`, `devices`, `unknownFutureValue`.|
|signals|[microsoft.graph.healthMonitoring.signals](../resources/healthmonitoring-signals.md)|A collection of signals that are used in the generation of the alert.|
|state|microsoft.graph.healthMonitoring.alertState|The current lifecycle state of the alert. The possible values are: `active`, `resolved`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.healthMonitoring.alert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.alert",
  "id": "String (identifier)",
  "alertType": "String",
  "scenario": "String",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "state": "String",
  "enrichment": {
    "@odata.type": "microsoft.graph.healthMonitoring.enrichment"
  },
  "signals": {
    "@odata.type": "microsoft.graph.healthMonitoring.signals"
  },
  "documentation": {
    "@odata.type": "microsoft.graph.healthMonitoring.documentation"
  }
}
```

