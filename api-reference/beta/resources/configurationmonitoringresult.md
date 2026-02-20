---
title: "configurationMonitoringResult resource type"
description: "Represents the information and properties of a configurationMonitoringResult object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationMonitoringResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationMonitoringResult](../resources/configurationmonitoringresult.md) object. This resource allows administrators to view monitor run details. They can determine whether the monitor is running successfully. If it isn't, they can identify the reasons for the failure. The resource also reports the number of drifts found in each monitor run.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationmonitoringresults.md)|[configurationMonitoringResult](../resources/configurationmonitoringresult.md) collection|Get a list of the [configurationMonitoringResult](../resources/configurationmonitoringresult.md) objects and their properties.|
|[Get](../api/configurationmonitoringresult-get.md)|[configurationMonitoringResult](../resources/configurationmonitoringresult.md)|Read the properties and relationships of a [configurationMonitoringResult](../resources/configurationmonitoringresult.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|driftsCount|Int32|Number of drifts observed during a monitor run.|
|errorDetails|[errorDetail](../resources/errordetail.md) collection|All the error details that prevent the monitor from running successfully. The error details are a contained entity.|
|id|String|Globally unique identifier (GUID) of the monitor run. System-generated. Inherited from [entity](../resources/entity.md).|
|monitorId|String|Globally unique identifier (GUID) of the monitor. System-generated.|
|runCompletionDateTime|DateTimeOffset|Date and time at which the monitor run completed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|runInitiationDateTime|DateTimeOffset|Date and time at which the monitor run initiated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|runStatus|monitorRunStatus|Status of the monitor run. The possible values are: `successful`, `partiallySuccessful`, `failed`, `unknownFutureValue`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs. Fetched automatically by the system.|

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
