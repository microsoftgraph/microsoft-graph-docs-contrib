---
title: "distributionListMember resource type"
description: "Represents an expanded member of a personal distribution list, with resolved contact information."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# distributionListMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an expanded member of a personal distribution list, with resolved contact information such as the display name and linked contact details.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/distributionlist-list-distributionlistmembers.md)|[distributionListMember](../resources/distributionlistmember.md) collection|Get the expanded member list of a [distributionList](../resources/distributionlist.md).|
|[Get](../api/distributionlist-get-distributionlistmember.md)|[distributionListMember](../resources/distributionlistmember.md)|Get a single expanded member of a [distributionList](../resources/distributionlist.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contactId|String|The ID of the referenced contact, if applicable. Read-only.|
|displayName|String|The display name of the member. Read-only.|
|id|String|The unique identifier for the distribution list member. Read-only.|
|recipientType|[recipientType](../resources/enums.md#recipienttype-values)|The type of the recipient. The possible values are: `contact`, `oneOff`, `mailbox`, `privateDL`, `unknownFutureValue`. Read-only.|

## Relationships

None.

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
  "contactId": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "recipientType": "string"
}
```
