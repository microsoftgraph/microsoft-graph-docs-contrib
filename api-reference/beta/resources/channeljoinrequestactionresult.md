---
title: "channelJoinRequestActionResult resource type"
description: "Represents the result for one channelJoinRequest in a bulk operation on the joinRequests relationship of a channel."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# channelJoinRequestActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result for one [channelJoinRequest](../resources/channeljoinrequest.md) in a bulk operation on the **joinRequests** relationship of a [channel](../resources/channel.md). The [approve](../api/channeljoinrequest-approve.md) and [reject](../api/channeljoinrequest-reject.md) actions return one **channelJoinRequestActionResult** for each join request ID in the request. The **error** property is `null` when the operation succeeded for that join request.

Inherits from [actionResultPart](../resources/actionresultpart.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|The error that occurred for this join request, if any. `null` when the operation succeeded. Inherited from [actionResultPart](../resources/actionresultpart.md).|
|joinRequestId|String|The ID of the [channelJoinRequest](../resources/channeljoinrequest.md) associated with this result.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelJoinRequestActionResult",
  "baseType": "microsoft.graph.actionResultPart"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelJoinRequestActionResult",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "joinRequestId": "String"
}
```

## Related content

- [Approve join requests for a channel](../api/channeljoinrequest-approve.md)
- [Reject join requests for a channel](../api/channeljoinrequest-reject.md)
