---
title: "eventPropagationResult resource type"
description: "For event-based retention, this attribute can provide the status of event propogation after it is created."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# eventPropagationResult resource type

Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**For event-based retention, this attribute can provide the status of event propogation after it is created.**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.recordsManagement.publicError](/graph/api/resources/publicerror)|The error if the status is not successful.|
|status|eventPropagationStatus|The Status of the distribution. The possible values are: `pending`, `error`, `success`, `notAvaliable`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recordsManagement.eventPropagationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recordsManagement.eventPropagationResult",
  "error": {
    "@odata.type": "microsoft.graph.recordsManagement.publicError"
  },
  "status": "String"
}
```

