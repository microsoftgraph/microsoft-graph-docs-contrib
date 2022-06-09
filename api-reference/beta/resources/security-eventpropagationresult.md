---
title: "eventPropagationResult resource type"
description: "Represents the success status of a created event and additional information about the targetted locations."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# eventPropagationResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the success status of a created event and additional information about the targetted locations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|eventPropagationStatus|Is the event completed. The possible values are: `none`, `inProcessing`, `failed`, `success`.|
|statusInformation|String|Additional infroamtion about the status.|
|serviceName|String|Workload being targetted by the event.|
|location|String|Specific location in the workload.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.eventPropagationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.eventPropagationResult",
  "workload": "String",
  "location": "String",
  "status": "String",
  "statusInformation": "String"
}
```


