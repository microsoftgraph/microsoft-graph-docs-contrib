---
title: "channelJoinRequest resource type"
description: "Represents a pending request from a user to join a private or shared channel in Microsoft Teams."
author: "gverma"
ms.date: 11/15/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# channelJoinRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pending request from a user to join a private or shared [channel](../resources/channel.md) in Microsoft Teams. A channel owner can approve or reject the request. The request is removed from the **joinRequests** collection of the channel when it's approved, rejected, or canceled by the requester.

Join requests apply only to channels with a **membershipType** of `private` or `shared`. Standard channels inherit the members of the parent team and don't have join requests.

Each user can have at most one pending join request per channel. The **id** of a join request is the Microsoft Entra object ID of the requester.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/channel-list-joinrequests.md)|[channelJoinRequest](../resources/channeljoinrequest.md) collection|Get a list of the pending [join requests](../resources/channeljoinrequest.md) for a private or shared [channel](../resources/channel.md).|
|[Get](../api/channeljoinrequest-get.md)|[channelJoinRequest](../resources/channeljoinrequest.md)|Get a pending [join request](../resources/channeljoinrequest.md) for a private or shared [channel](../resources/channel.md).|
|[Approve](../api/channeljoinrequest-approve.md)|[channelJoinRequestActionResult](../resources/channeljoinrequestactionresult.md) collection|Approve up to 20 pending [requests](../resources/channeljoinrequest.md) to join a private or shared [channel](../resources/channel.md).|
|[Reject](../api/channeljoinrequest-reject.md)|[channelJoinRequestActionResult](../resources/channeljoinrequestactionresult.md) collection|Reject up to 20 pending [requests](../resources/channeljoinrequest.md) to join a private or shared [channel](../resources/channel.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the join request. Equal to the Microsoft Entra object ID of the requester. Read-only. Inherited from [entity](../resources/entity.md).|
|requester|[identitySet](../resources/identityset.md)|The identity that is added to the channel if the request is approved. Currently, the **user** property is always a [teamworkUserIdentity](../resources/teamworkuseridentity.md). Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.channelJoinRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelJoinRequest",
  "id": "String (identifier)",
  "requester": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```
