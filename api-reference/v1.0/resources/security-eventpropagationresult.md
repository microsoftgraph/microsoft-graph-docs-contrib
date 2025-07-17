---
title: "eventPropagationResult resource type"
description: "Represents the success status of a created event and additional information about the scoped locations."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# eventPropagationResult resource type

Namespace: microsoft.graph.security

Represents the status of a retention event creation request and additional information about the scoped locations.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.eventPropagationStatus|Indicates the status of the event creation request. The possible values are: `none`, `inProcessing`, `failed`, `success`, `unknownFutureValue`.|
|statusInformation|String|Additional information about the status of the event creation request.|
|serviceName|String|The name of the workload associated with the event.|
|location|String|The name of the specific location in the workload associated with the event.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.eventPropagationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.eventPropagationResult",
  "serviceName": "String",
  "location": "String",
  "status": "String",
  "statusInformation": "String"
}
```


