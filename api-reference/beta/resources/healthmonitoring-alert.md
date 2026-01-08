---
title: "alert resource type"
description: "Represents a system-detected health monitoring alert associated with common Microsoft Entra authentication and access management scenarios."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 10/17/2024
---

# alert resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a system-detected health monitoring alert associated with common Microsoft Entra authentication and access management scenarios. Anomaly detection catches unusual patterns in health metrics data streams, for example, unusually high MFA sign-in failures, and surfaces these patterns in the form of alerts in Microsoft Entra Health monitoring.

This resource supports subscribing to [change notifications](/graph/change-notifications-overview).

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
|alertType|microsoft.graph.healthMonitoring.alertType|Indicates which type of scenario an alert is associated with. The possible values are: `unknown`, `mfaSignInFailure`, `managedDeviceSignInFailure`, `compliantDeviceSignInFailure`, `unknownFutureValue`, `conditionalAccessBlockedSignIn`, `samlSignInFailure`. Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `conditionalAccessBlockedSignIn`, `samlSignInFailure`. Supports `$filter` (`eq`).|
|category|microsoft.graph.healthMonitoring.category|The classification that groups the scenario. The possible values are: `unknown`, `authentication`, `unknownFutureValue`. |
|createdDateTime|DateTimeOffset|The time when Microsoft Entra Health monitoring generated the alert. Supports `$orderby`.|
|documentation|[microsoft.graph.healthMonitoring.documentation](../resources/healthmonitoring-documentation.md)|A key-value pair that contains the name of and link to the documentation to aid in investigation of the alert.|
|enrichment|[microsoft.graph.healthMonitoring.enrichment](../resources/healthmonitoring-enrichment.md)|Investigative information on the alert. This information typically includes counts of impacted objects, which include directory objects such as users, groups, and devices, and a pointer to supporting data.|
|id|String|The unique GUID identifier of this alert in the associated tenant. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|scenario|microsoft.graph.healthMonitoring.scenario|The area being monitored on the system that is emitting the source signals. The possible values are: `unknown`, `mfa`, `devices`, `unknownFutureValue`, `conditionalAccess`, `saml`. Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `conditionalAccess`, `saml`.|
|signals|[microsoft.graph.healthMonitoring.signals](../resources/healthmonitoring-signals.md)|The collection of signals that were used in the generation of the alert. These signals are sourced from [serviceActivity APIs](../resources/serviceactivity.md) and are added to the alert as key-value pairs.|
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

