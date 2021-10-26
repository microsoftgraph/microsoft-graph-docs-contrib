---
title: "microsoftTunnelHealthThreshold resource type"
description: "Entity that represents the health thresholds of a health metric."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# microsoftTunnelHealthThreshold resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity that represents the health thresholds of a health metric.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List microsoftTunnelHealthThresholds](../api/intune-mstunnel-microsofttunnelhealththreshold-list.md)|[microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) collection|List properties and relationships of the [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) objects.|
|[Get microsoftTunnelHealthThreshold](../api/intune-mstunnel-microsofttunnelhealththreshold-get.md)|[microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md)|Read properties and relationships of the [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object.|
|[Create microsoftTunnelHealthThreshold](../api/intune-mstunnel-microsofttunnelhealththreshold-create.md)|[microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md)|Create a new [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object.|
|[Delete microsoftTunnelHealthThreshold](../api/intune-mstunnel-microsofttunnelhealththreshold-delete.md)|None|Deletes a [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md).|
|[Update microsoftTunnelHealthThreshold](../api/intune-mstunnel-microsofttunnelhealththreshold-update.md)|[microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md)|Update the properties of a [microsoftTunnelHealthThreshold](../resources/intune-mstunnel-microsofttunnelhealththreshold.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The metric name|
|healthyThreshold|Int64|The threshold for being healthy|
|unhealthyThreshold|Int64|The threshold for being unhealthy|
|defaultHealthyThreshold|Int64|The default threshold for being healthy|
|defaultUnhealthyThreshold|Int64|The default threshold for being unhealthy|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftTunnelHealthThreshold"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTunnelHealthThreshold",
  "id": "String (identifier)",
  "healthyThreshold": 1024,
  "unhealthyThreshold": 1024,
  "defaultHealthyThreshold": 1024,
  "defaultUnhealthyThreshold": 1024
}
```



