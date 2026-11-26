---
title: "teamJoinRequestActionResult resource type"
description: "Represents the result for one teamJoinRequest in a bulk operation on the joinRequests relationship of a team."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamJoinRequestActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result for one [teamJoinRequest](../resources/teamjoinrequest.md) in a bulk operation on the **joinRequests** relationship of a [team](../resources/team.md). The [approve](../api/teamjoinrequest-approve.md) and [reject](../api/teamjoinrequest-reject.md) actions return one **teamJoinRequestActionResult** for each join request ID in the request. The **error** property is `null` when the operation succeeded for that join request.

Inherits from [actionResultPart](../resources/actionresultpart.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|The error that occurred for this join request, if any. `null` when the operation succeeded. Inherited from [actionResultPart](../resources/actionresultpart.md).|
|joinRequestId|String|The ID of the [teamJoinRequest](../resources/teamjoinrequest.md) associated with this result.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamJoinRequestActionResult",
  "baseType": "microsoft.graph.actionResultPart"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamJoinRequestActionResult",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "joinRequestId": "String"
}
```

## Related content

- [Approve join requests for a team](../api/teamjoinrequest-approve.md)
- [Reject join requests for a team](../api/teamjoinrequest-reject.md)
