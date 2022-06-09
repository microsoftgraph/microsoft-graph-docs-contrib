---
title: "retentionEventStatus resource type"
description: "For event-based retention, this attribute can provide the status of event propogation after it is created."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# retentionEventStatus resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For event-based retention, this attribute can provide the status of event propogation after it is created.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|The error if the status is not successful.|
|status|eventStatusType|The Status of the distribution. The possible values are: `pending`, `error`, `success`, `notAvaliable`.|

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

