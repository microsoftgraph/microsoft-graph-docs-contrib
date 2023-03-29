---
title: "retentionEventStatus resource type"
description: "For event-based retention, provides the status of the propagation of the event to the specified locations after the event has been created."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# retentionEventStatus resource type

Namespace: microsoft.graph.security

For event-based retention, this attribute provides the status of event propogation to the targetted locations after the event has been created.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|The error if the status is not successful.|
|status|microsoft.graph.security.eventStatusType|The status of the distribution. The possible values are: `pending`, `error`, `success`, `notAvaliable`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.retentionEventStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.retentionEventStatus",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "status": "String"
}
```

