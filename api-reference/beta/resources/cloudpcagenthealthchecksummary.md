---
title: "cloudPcAgentHealthCheckSummary resource type"
description: "Describe the details of the agent health status."
author: "jianawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe the details of the agent health status.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentHealthCheckDetails|[cloudPcAgentHealthCheckDetail](../resources/cloudpcagenthealthcheckdetail.md) collection|A list of health check results that were performed for the target agent. Used to provides detailed information of health checks. Empty by default. Read Only. |
|lastSucceededHealthCheckDateTime|DateTimeOffset|Indicates the date and time when the last health check finished successfully. The date and time information is shown using ISO 8601 format and is always in UTC time. Read Only.|
|latestHealthCheckStatus|[cloudPcAgentHealthCheckStatusDetail](../resources/cloudpcagenthealthcheckstatusdetail.md)|Indicates the status of the latest agent health check. It can be an ongoing agent health check or the last finished health check. Used to track the latest triggered health check.Read Only. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentHealthCheckSummary",
  "lastSucceededHealthCheckDateTime": "String (timestamp)",
  "agentHealthCheckDetails": [
    {
      "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckDetail"
    }
  ],
  "latestHealthCheckStatus": {
    "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckStatusDetail"
  }
}
```