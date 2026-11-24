---
title: "configurationManagement resource type"
description: "Represents an entity that acts as a container for Tenant Configuration Management functionality."
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
ms.date: 01/19/2026
---

# configurationManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that acts as a container for Tenant Configuration Management functionality.

## Properties
None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| configurationDrifts | [configurationDrift](../resources/configurationdrift.md) collection | A container for configuration drift resources. |
| configurationMonitors | [configurationMonitor](../resources/configurationmonitor.md) collection | A container for configuration monitor resources. |
| configurationMonitoringResults | [configurationMonitoringResult](../resources/configurationmonitoringresult.md) collection | A container for configuration monitoring results resources. |
| configurationSnapshotJobs | [configurationSnapshotJob](../resources/configurationsnapshotjob.md) collection | A container for snapshot job resources. |
| configurationSnapshots | [configurationBaseline](../resources/configurationbaseline.md) collection | A container for configuration snapshot baselines. |
| configurationTemplates | [configurationTemplate](../resources/configurationtemplate.md) collection | A container for reusable, versioned configuration templates. |

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
