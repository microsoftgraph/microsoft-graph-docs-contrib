---
title: "userSimulationEventInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userSimulationEventInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browser|String|**TODO: Add Description**|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|eventName|String|**TODO: Add Description**|
|ipAddress|String|**TODO: Add Description**|
|osPlatformDeviceDetails|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userSimulationEventInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSimulationEventInfo",
  "eventName": "String",
  "eventDateTime": "String (timestamp)",
  "ipAddress": "String",
  "osPlatformDeviceDetails": "String",
  "browser": "String"
}
```

