---
title: "retentionEventStatus resource type"
description: "For event-based retention, provides the status of the propagation of the event to the specified locations after the event has been created."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# retentionEventStatus resource type

Namespace: microsoft.graph.security

For event-based retention, this attribute provides the status of event propagation to the targeted locations after the event has been created.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|The error if the status isn't successful.|
|status|microsoft.graph.security.eventStatusType|The status of the distribution. The possible values are: `pending`, `error`, `success`, `notAvaliable`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

