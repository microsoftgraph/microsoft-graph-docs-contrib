---
title: "distributionList resource type"
description: "Represents a personal distribution list in the user's mailbox."
author: "kemwangi"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# distributionList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a personal distribution list in the user's mailbox. A distribution list enables users to group email recipients together so they can send a message to all members at once, without entering each address individually.

Inherits from [outlookItem](../resources/outlookitem.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/user-list-distributionlists.md)|[distributionList](../resources/distributionlist.md) collection|Get a list of the [distributionList](../resources/distributionlist.md) objects in the user's mailbox.|
|[Create](../api/user-post-distributionlists.md)|[distributionList](../resources/distributionlist.md)|Create a new [distributionList](../resources/distributionlist.md) in the user's mailbox.|
|[Get](../api/distributionlist-get.md)|[distributionList](../resources/distributionlist.md)|Read the properties and relationships of a [distributionList](../resources/distributionlist.md) object.|
|[Update](../api/distributionlist-update.md)|[distributionList](../resources/distributionlist.md)|Update the properties of a [distributionList](../resources/distributionlist.md) object.|
|[Delete](../api/distributionlist-delete.md)|None|Delete a [distributionList](../resources/distributionlist.md) object.|
|[Add members](../api/distributionlist-addmembers.md)|None|Add members to a [distributionList](../resources/distributionlist.md).|
|[Delete members](../api/distributionlist-deletemembers.md)|None|Remove members from a [distributionList](../resources/distributionlist.md).|
|[List members](../api/distributionlist-list-distributionlistmembers.md)|[distributionListMember](../resources/distributionlistmember.md) collection|Get the expanded member list of a [distributionList](../resources/distributionlist.md).|
|[Get member](../api/distributionlist-get-distributionlistmember.md)|[distributionListMember](../resources/distributionlistmember.md)|Get a single expanded member of a [distributionList](../resources/distributionlist.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|categories|String collection|The categories associated with the distribution list. Inherited from [outlookItem](../resources/outlookitem.md).|
|changeKey|String|Version identifier used for optimistic concurrency control via the `If-Match` header. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|createdDateTime|DateTimeOffset|The date and time when the distribution list was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|displayName|String|The display name of the distribution list.|
|id|String|The unique identifier for the distribution list. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the distribution list was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only. Inherited from [outlookItem](../resources/outlookitem.md).|
|members|[member](../resources/member.md) collection|The list of members in the distribution list. Not returned by default; use `$select=members` to include.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|distributionListMembers|[distributionListMember](../resources/distributionlistmember.md) collection|The expanded members of the distribution list. Each member contains detailed information including resolved email addresses. Read-only.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.distributionList",
  "baseType": "microsoft.graph.outlookItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.distributionList",
  "id": "string (identifier)",
  "createdDateTime": "string (timestamp)",
  "lastModifiedDateTime": "string (timestamp)",
  "changeKey": "string",
  "categories": [
    "string"
  ],
  "displayName": "string",
  "members": [
    {
      "@odata.type": "microsoft.graph.member"
    }
  ]
}
```
