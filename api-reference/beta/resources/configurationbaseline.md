---
title: "configurationBaseline resource type"
description: "Represents a baseline that contains details of at least one resource and one property associated with the resource that the admin wants to monitor via the configurationMonitor object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationBaseline resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a baseline that contains details of at least one resource and one property associated with the resource that the admin wants to monitor via the [configurationMonitor](../resources/configurationmonitor.md) object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md)|Read the properties and relationships of a [configurationBaseline](../resources/configurationbaseline.md) object that is attached to a specific monitor.|
|[Create snapshot](../api/configurationbaseline-createsnapshot.md)|[configurationSnapshotJob](../resources/configurationsnapshotjob.md)|Create a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) asynchronously.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|User-friendly description of the baseline given by the user.|
|displayName|String|User-friendly name given by the user to the baseline.|
|id|String|The unique identifier for the **configurationBaseline** object. Inherited from [entity](../resources/entity.md).|
|parameters|[baselineParameter](../resources/baselineparameter.md) collection|Collection of parameters attached to the baseline.|
|resources|[baselineResource](../resources/baselineresource.md) collection|Collection of resources and their properties that are added to the baseline. At least one property of one resource must be present in the baseline.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationBaseline",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationBaseline",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "parameters": [{"@odata.type": "microsoft.graph.baselineParameter"}],
  "resources": [{"@odata.type": "microsoft.graph.baselineResource"}]
}
```
