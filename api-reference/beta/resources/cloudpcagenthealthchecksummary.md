---
title: "cloudPcAgentHealthCheckSummary resource type"
description: "Describes the details of an agent health status."
author: "jianawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the details of an agent health status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentHealthCheckDetails|[cloudPcAgentHealthCheckDetail](../resources/cloudpcagenthealthcheckdetail.md) collection|A list of health check results performed for the target agent. Provides detailed information about the health checks. Empty by default. Read-only. |
|lastSucceededHealthCheckDateTime|DateTimeOffset|Indicates the date and time when the last health check finished successfully. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|latestHealthCheckStatus|[cloudPcAgentHealthCheckStatusDetail](../resources/cloudpcagenthealthcheckstatusdetail.md)|Indicates the status of the latest agent health check. It can be an ongoing agent health check or the last finished health check. Tracks the latest triggered health check. Read-only. |

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
  "agentHealthCheckDetails": [{"@odata.type": "microsoft.graph.cloudPcAgentHealthCheckDetail"}],
  "lastSucceededHealthCheckDateTime": "String (timestamp)",
  "latestHealthCheckStatus": {"@odata.type": "microsoft.graph.cloudPcAgentHealthCheckStatusDetail"}
}
```
