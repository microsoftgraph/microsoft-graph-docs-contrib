---
title: "cloudPcAgentHealthCheckStatusDetail resource type"
description: "Describe the working status of agent health check task."
author: "jianawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckStatusDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe the working status of agent health check task.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalHealthCheckMessage|String|Contains additional optional information about this health check to help explain the current status of this health check. Example: "HealthCheck cannot be triggered while installing." Default is empty. Read Only.|
|cloudPcId|String|Indicates the unique identifier of the Cloud PC where the agent health check is happening. Read Only.|
|healthCheckState|cloudPcAgentHealthCheckState|Indicates the working status of the health check. Default value is `pending`.The possible values are: `pending`, `processing`, `succeeded`, `failed`, `conflict`, `canceled`, `unknownFutureValue`. Read Only.|
|lastModifiedDateTime|DateTimeOffset|Indicates the date and time when the last health check state was modified. The date and time information is shown using ISO 8601 format and is always in UTC time. Read Only.|
|startDateTime|DateTimeOffset|Indicates the date and time when the latest agent health check started.  The date and time information is shown using ISO 8601 format and is always in UTC time. Read Only.|

### cloudPcAgentHealthCheckState values 

|Member|Description|
|:---|:---|
|pending|Default. Indicates that the health check is submitted but not started.|
|processing|Indicates the health check is in process.|
|succeeded|Indicates the health check completed successfully.|
|failed|Indicates the health check stopped with failure.|
|conflict|Indicates the health check did not start because another conflict health check is already submitted.|
|canceled|Indicates the health check is canceled.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
  "cloudPcId": "String",
  "healthCheckState": "String",
  "startDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "additionalHealthCheckMessage": "String"
}
```