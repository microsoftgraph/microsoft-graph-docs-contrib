---
title: "healthMonitoringRoot resource type"
description: "Represents a container for navigation properties of resources for  Microsoft Entra Health Monitoring."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-health-monitoring"
doc_type: resourcePageType
---

# healthMonitoringRoot resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for navigation properties of resources for Microsoft Entra Health Monitoring.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfigurations|[microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) collection|Represents the configuration of an alert type defining behavior that occurs when an alert is created.|
|alerts|[microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) collection|Represents an alert that was detected by the health monitoring system for anomalous usage patterns found in an Microsoft Entra tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.healthMonitoring.healthMonitoringRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.healthMonitoring.healthMonitoringRoot",
  "id": "String (identifier)"
}
```

