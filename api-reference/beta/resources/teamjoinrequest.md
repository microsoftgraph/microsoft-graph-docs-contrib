---
title: "teamJoinRequest resource type"
description: "Represents a pending request from a user to join a private team in Microsoft Teams."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamJoinRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pending request from a user to join a private [team](../resources/team.md) in Microsoft Teams. A team owner can approve or reject the request. The request is removed from the **joinRequests** collection of the team when it's approved, rejected, or canceled by the requester.

Each user can have at most one pending join request per team. The **id** of a join request is the Microsoft Entra object ID of the requester.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/team-list-joinrequests.md)|[teamJoinRequest](../resources/teamjoinrequest.md) collection|Get a list of the pending [join requests](../resources/teamjoinrequest.md) for a team.|
|[Get](../api/teamjoinrequest-get.md)|[teamJoinRequest](../resources/teamjoinrequest.md)|Get a pending [join request](../resources/teamjoinrequest.md) for a [team](../resources/team.md).|
|[Approve](../api/teamjoinrequest-approve.md)|[teamJoinRequestActionResult](../resources/teamjoinrequestactionresult.md) collection|Approve up to 20 pending [requests](../resources/teamjoinrequest.md) to join a [team](../resources/team.md).|
|[Reject](../api/teamjoinrequest-reject.md)|[teamJoinRequestActionResult](../resources/teamjoinrequestactionresult.md) collection|Reject up to 20 pending [requests](../resources/teamjoinrequest.md) to join a [team](../resources/team.md).|            

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the join request. Equal to the Microsoft Entra object ID of the requester. Read-only. Inherited from [entity](../resources/entity.md).|
|requester|[identitySet](../resources/identityset.md)|The identity that is added to the team if the request is approved. Currently, the **user** property is always a [teamworkUserIdentity](../resources/teamworkuseridentity.md). Read-only.|
|sponsors|[identitySet](../resources/identityset.md) collection|The identities that asked for the requester to be added to the team on their behalf. Currently, the **user** property of each item is always a [teamworkUserIdentity](../resources/teamworkuseridentity.md). Empty when the requester asked to join the team themselves. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamJoinRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamJoinRequest",
  "id": "String (identifier)",
  "requester": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "sponsors": [
    {
      "@odata.type": "microsoft.graph.identitySet"
    }
  ]
}
```
