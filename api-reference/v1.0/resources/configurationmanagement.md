---
title: "configurationManagement resource type"
description: "Represents an entity that acts as a container for Tenant Configuration Management functionality."
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# configurationManagement resource type

Namespace: microsoft.graph

Represents an entity that acts as a container for Tenant Configuration Management functionality.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|identifier for the object. Inherited from [entity](../resources/entity.md). |

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
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationManagement",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagement",
  "id": "String (identifier)"
}
```
