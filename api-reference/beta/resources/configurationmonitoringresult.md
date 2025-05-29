---
title: "configurationMonitoringResult resource type"
description: "Represents the information and properties of a configurationMonitoringResult object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationMonitoringResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationMonitoringResult](../resources/configurationmonitoringresult.md) object. This resource allows administrators to view monitor run details. They can determine whether the monitor is running successfully. If it isn't, they can identify the reasons for the failure. The resource also reports the number of drifts found in each monitor run.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/configurationmonitoringresult-get.md)|[configurationMonitoringResult](../resources/configurationmonitoringresult.md)|Get the list of all monitoring run details across all existing monitors.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|driftsCount|Int32|Number of drifts observed during a monitor run.|
|errorDetails|[errorDetail](../resources/errordetail.md) collection|An array containing all the error details that are stopping the monitor to run successfully. The error details are a contained entity.|
|id|String|Globally unique identifier / GUID of the monitor run [Created by the system] Inherits from [entity](../resources/entity.md).|
|monitorId|String|Globally unique identifier / GUID of the monitor [Created by the system].|
|runCompletionDateTime|DateTimeOffset|Date and time at which the monitor run completed.|
|runInitiationDateTime|DateTimeOffset|Date and time at which the monitor run initiated.|
|runStatus|monitorRunStatus|Status of the monitor run. It can either be successful, partiallySuccessful, or failed.|
|tenantId|String|Globally unique identifier / GUID of the tenant for which the monitor is being run [Fetched automatically by the system].|

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
  "driftsCount": "Int32",
  "errorDetails": [{"@odata.type": "microsoft.graph.errorDetail"}],
  "id": "String (identifier)",
  "monitorId": "String",
  "runCompletionDateTime": "String (timestamp)",
  "runInitiationDateTime": "String (timestamp)",
  "runStatus": "String",
  "tenantId": "String"
}
```
