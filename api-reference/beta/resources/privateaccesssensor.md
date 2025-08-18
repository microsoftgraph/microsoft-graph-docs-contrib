---
title: "privateAccessSensor resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/13/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# privateAccessSensor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onpremisespublishingprofile-list-sensors.md)|[privateAccessSensor](../resources/privateaccesssensor.md) collection|Get a list of the privateAccessSensor objects and their properties.|
|[Get](../api/privateaccesssensor-get.md)|[privateAccessSensor](../resources/privateaccesssensor.md)|Read the properties and relationships of a privateAccessSensor object.|
|[Update](../api/privateaccesssensor-update.md)|[privateAccessSensor](../resources/privateaccesssensor.md)|Update the properties of a privateAccessSensor object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalIp|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isBreakglassEnabled|Boolean|**TODO: Add Description**|
|machineName|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privateAccessSensor",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateAccessSensor",
  "id": "String (identifier)",
  "machineName": "String",
  "externalIp": "String",
  "version": "String",
  "isBreakglassEnabled": "Boolean"
}
```

