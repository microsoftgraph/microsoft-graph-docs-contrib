---
title: "member complex type"
description: "Represents a member of a personal distribution list, identified by routing key and recipient type."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
toc.title: "Member (preview)"
---

# member complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a member of a personal distribution list, identified by routing key and recipient type. Use this type when adding or removing members through the [addMembers](../api/distributionlist-addmembers.md) and [deleteMembers](../api/distributionlist-deletemembers.md) actions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contactId|String|The ID of the referenced contact, if applicable. Optional.|
|displayName|String|The display name of the member. Optional.|
|key|String|The email address or routing key of the member. Required.|
|recipientType|[recipientType](../resources/enums.md#recipienttype-values)|The type of the recipient. The possible values are: `contact`, `oneOff`, `mailbox`, `privateDL`, `unknownFutureValue`. Optional.|
|routingType|String|The routing type for the member, for example, `SMTP`. Optional.|

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
  "contactId": "string",
  "displayName": "string",
  "key": "string",
  "recipientType": "string",
  "routingType": "string"
}
```
