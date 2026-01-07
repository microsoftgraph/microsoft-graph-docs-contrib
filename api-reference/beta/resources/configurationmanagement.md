---
title: "configurationManagement resource type"
description: "Represents an entity that acts as a container for unified tenant configuration management functionality."
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
ms.date: 06/08/2025
---

# configurationManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that acts as a container for unified tenant configuration management functionality.

## Properties
None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| configurationMonitors | [configurationMonitor](../resources/configurationmonitor.md) collection | A container for configuration monitor resources. |
| configurationMonitoringResults | [configurationMonitoringResult](../resources/configurationmonitoringresult.md) collection | A container for configuration monitoring results resources. |
| configurationDrifts | [configurationDrift](../resources/configurationdrift.md) collection | A container for configuration drift resources. |
| configurationSnapshotJobs | [configurationSnapshotJob](../resources/configurationsnapshotjob.md) collection | A container for snapshot job resources. |
| configurationSnapshots | [configurationBaseline](../resources/configurationbaseline.md) collection | A container for configuration snapshot baselines. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagement"
}
```
