---
title: "distributionListMember resource type"
description: "Represents an expanded member of a personal distribution list, with resolved contact information."
author: "rwaithera"
ms.date: 08/03/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# distributionListMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an expanded member of a personal distribution list.


## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the member. Read-only.|
|id|String|The unique identifier for the distribution list member. It corresponds to the value supplied as 'key' when adding a member via [addMembers](../api/distributionlist-addmembers.md). Read-only.|
|memberId|String| A system generated unique identifier. Non-empty for contact, privateDL and mailbox members. ReadOnly.|
|type|[recipientType](../resources/enums.md#recipienttype-values)|The type of the recipient. The possible values are: `contact`, `oneOff`, `mailbox`, `privateDL`, `unknownFutureValue`. ReadOnly|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|contact|[contact](../resources/contact.md)|The contact associated with the distribution list member. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.distributionListMember"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.distributionListMember",
  "id": "string (identifier)",
  "displayName": "string",
  "type": "string",
  "memberId": "string"
}
```

