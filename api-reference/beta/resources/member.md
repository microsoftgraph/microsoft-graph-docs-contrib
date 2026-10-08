---
title: "member complex type"
description: "Represents a member of a personal distribution list, identified by routing key and recipient type."
author: "rwaithera"
ms.date: 08/03/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
toc.title: "Member (preview)"
---

# member complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a member of a personal distribution list. Use this type when adding or removing members through the [addMembers](../api/distributionlist-addmembers.md) and [deleteMembers](../api/distributionlist-deletemembers.md) actions.

> [!NOTE]
> To identify a member, a client may supply `key`, `memberId`, or both.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the member. Optional.|
|key|String|The email address or routing key of the member. Optional.|
|memberId|String|A unique identifier system-generated for contact, privateDL, and mailbox members. Optional.|
|type|[recipientType](../resources/enums.md#recipienttype-values)|The type of the recipient. The possible values are: `contact`, `oneOff`, `mailbox`, `privateDL`, `unknownFutureValue`. Required.|

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
  "displayName": "string",
  "key": "string",
  "type": "string",
  "memberId": "string"
}
```
