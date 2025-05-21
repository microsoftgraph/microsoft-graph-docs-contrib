---
title: "configurationMonitoringResult resource type"
description: "The endpoint allows admins to look for the monitor run details. The admins can to understand if the monitor is running successfully. If the monitor is not running successfully, they can understand reasons why they aren't running successfully. The endpoint also informs number of drifts found per monitor run."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# configurationMonitoringResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The endpoint allows admins to look for the monitor run details. The admins can to understand if the monitor is running successfully. If the monitor is not running successfully, they can understand reasons why they aren't running successfully. The endpoint also informs number of drifts found per monitor run. This API is currently in preview and is available in commercial environments only.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|
|[Get](../api/configurationmonitoringresult-get.md)|[configurationMonitoringResult](../resources/configurationmonitoringresult.md)|Get the list of all monitoring run details across all existing monitors|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|driftsCount|Int32|Number of drifts observed during a monitor run|
|errorDetails|[errorDetail](../resources/errordetail.md) collection|An array containing all the error details that are stopping the monitor to run successfully. The error details are a contained entity.|
|id|String|Globally unique identifier / GUID of the monitor run [Created by the system] Inherits from [entity](../resources/entity.md)|
|monitorId|String|Globally unique identifier / GUID of the monitor [Created by the system]|
|runCompletionDateTime|DateTimeOffset|Date & time at which the monitor run completed|
|runInitiationDateTime|DateTimeOffset|Date & time at which the monitor run initiated|
|runStatus|monitorRunStatus|Status of the monitor run. It can either be successful, partiallySuccessful, or failed.|
|tenantId|String|Globally unique identifier / GUID of the tenant for which the monitor is being run [Fetched automatically by the system]|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationMonitoringResult",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationMonitoringResult",
  "id": "String (identifier)",
  "tenantId": "String",
  "monitorId": "String",
  "runCompletionDateTime": "String (timestamp)",
  "runInitiationDateTime": "String (timestamp)",
  "runStatus": "String",
  "driftsCount": "Integer",
  "errorDetails": [
    {
      "@odata.type": "microsoft.graph.errorDetail"
    }
  ]
}
```