---
title: "healthMonitoringRoot resource type"
description: "Represents a container for navigation properties of resources for Microsoft Entra Health monitoring."
author: "huatang92"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 10/09/2024
---

# healthMonitoringRoot resource type

Namespace: microsoft.graph.healthMonitoring

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for navigation properties of resources for Microsoft Entra Health monitoring.


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
|alertConfigurations|[microsoft.graph.healthMonitoring.alertConfiguration](../resources/healthmonitoring-alertconfiguration.md) collection|The configuration of an alert type, which defines behavior that occurs when an alert is created.|
|alerts|[microsoft.graph.healthMonitoring.alert](../resources/healthmonitoring-alert.md) collection|The collection of health monitoring system detected alerts for anomalous usage patterns found in a Microsoft Entra tenant.|

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

