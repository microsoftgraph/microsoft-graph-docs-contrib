---
title: "member complex type"
description: "Represents a member of a personal distribution list, identified by routing key and recipient type."
author: "rwaithera"
ms.date: 10/21/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# member complex type

Namespace: microsoft.graph

Represents a member of a [personal distribution list](../resources/distributionlist.md), identified by routing key and recipient type. Use this type when you add or remove members through the [addMembers](../api/distributionlist-addmembers.md) and [deleteMembers](../api/distributionlist-deletemembers.md) actions.

> [!NOTE]
> To identify a member, a client can supply **key**, **memberId**, or both.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the member. Optional.|
|key|String|The email address or routing key of the member. Optional.|
|memberId|String|A system-generated unique identifier for `contact`, `privateDL`, and `mailbox` members. Optional.|
|type|recipientType|The type of the recipient. The possible values are: `contact`, `oneOff`, `mailbox`, `privateDL`, `unknownFutureValue`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.member"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.member",
  "displayName": "String",
  "key": "String",
  "type": "String",
  "memberId": "String"
}
```
