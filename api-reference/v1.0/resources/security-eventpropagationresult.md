---
title: "eventPropagationResult resource type"
description: "Represents the success status of a created event and additional information about the scoped locations."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
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


