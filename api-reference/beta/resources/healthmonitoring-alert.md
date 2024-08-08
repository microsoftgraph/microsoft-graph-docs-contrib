---
title: "alert resource type"
description: "Represents a system-detected health monitoring alert associated with common Microsoft Entra authentication and access management scenarios. Anomaly detection catches unusual patterns in health metrics data streams, available from serviceActivity APIs, and surfaces these patterns in the form of alerts."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# alert resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a system-detected health monitoring alert associated with common Microsoft Entra authentication and access management scenarios. Anomaly detection catches unusual patterns in health metrics data streams, available from serviceActivity APIs, and surfaces these patterns in the form of alerts.

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
|alertType|microsoft.graph.healthMonitoring.alertType|Indicates which type of scenario an alert is associated with. The possible values are: `unknown`, `mfaSignInFailure`, `managedDeviceSignInFailure`, `compliantDeviceSignInFailure`, `unknownFutureValue`. New alert types might be added in the future as new monitored scenarios are added.|
|category|microsoft.graph.healthMonitoring.category|The classification that groups the scenario. The possible values are: `unknown`, `authentication`, `unknownFutureValue`. New categories might be added in the future as new monitored scenarios are added.|
|createdDateTime|DateTimeOffset|The time that the Alert was generated at.|
|documentation|[microsoft.graph.healthMonitoring.documentation](../resources/healthmonitoring-documentation.md)|A key-value pair that contains the name of documentation to aid in investigation of the alert and a link to the documentation.|
|enrichment|[microsoft.graph.healthMonitoring.enrichment](../resources/healthmonitoring-enrichment.md)|Investigative information on the alert. This information typically includes counts of impacted users, devices, and other resources and a pointer to supporting data.|
|id|String|The unique identifier of this alert in the associated tenant. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|scenario|microsoft.graph.healthMonitoring.scenario|The area being monitored on the system that is emitting the source signals. The possible values are: `unknown`, `mfa`, `devices`, `unknownFutureValue`. New scenarios might be added in the future.|
|signals|[microsoft.graph.healthMonitoring.signals](../resources/healthmonitoring-signals.md)|The collection of signals that were used in the generation of the alert. These signals are sourced from [serviceActivity APIs](https://learn.microsoft.com/graph/api/resources/serviceactivity) and are added to the alert as key-value pairs. The key is the signal name (for example, mfaSignInFailure or mfaSignInSuccess). The value is a serviceActivity GET query that takes the following parameters: `inclusiveIntervalStartDateTime` (DateTimeOffset), `exclusiveIntervalEndDateTime` (DateTimeOffset), `aggregationIntervalInMinutes` (Int32).|
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

