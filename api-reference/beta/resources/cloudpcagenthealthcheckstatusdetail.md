---
title: "cloudPcAgentHealthCheckStatusDetail resource type"
description: "Describes the working status of an agent health check task."
author: "jianawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckStatusDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the working status of an agent health check task.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalHealthCheckMessage|String|The optional information about this health check to help explain its current status. For example, `HealthCheck can't be triggered while installing.` Empty by default. Read-only.|
|cloudPcId|String|The unique identifier of the Cloud PC where the agent health check occurs. Read-only.|
|healthCheckState|[cloudPcAgentHealthCheckState](../resources/cloudpcagenthealthcheckstatusdetail.md#cloudpcagenthealthcheckstate-values)|Indicates the working status of the health check. Default value is `pending`. The possible values are: `pending`, `processing`, `succeeded`, `failed`, `conflict`, `canceled`, `unknownFutureValue`. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Indicates the date and time when the health check state was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|startDateTime|DateTimeOffset|Indicates the date and time when the latest agent health check started. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

### cloudPcAgentHealthCheckState values 

|Member|Description|
|:---|:---|
|pending|Default. Indicates that the health check is submitted but not started.|
|processing|Indicates that the health check is in process.|
|succeeded|Indicates that the health check completed successfully.|
|failed|Indicates that the health check stopped with failure.|
|conflict|Indicates that the health check didn't start because another conflicting health check was already submitted.|
|canceled|Indicates that the health check is canceled.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckStatusDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentHealthCheckStatusDetail",
  "additionalHealthCheckMessage": "String",
  "cloudPcId": "String",
  "healthCheckState": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)"
}
```
