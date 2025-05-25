---
title: "offerShiftRequest resource type"
description: "Represents type of shift request to offer a shift to another user in the team."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# offerShiftRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents type of shift request to offer a shift to another user in the team.

Base type of [swapShiftsChangeRequest](swapshiftschangerequest.md).

Inherits from [scheduleChangeRequest](../resources/schedulechangerequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/offershiftrequest-post.md) | [offerShiftRequest](offershiftrequest.md) | Create an instance of an **offerShiftRequest** object. |
| [Get](../api/offershiftrequest-get.md) | [offerShiftRequest](offershiftrequest.md) | Read properties and relationships of **offerShiftRequest** object. |
| [List](../api/offershiftrequest-list.md) | Collection of [offerShiftRequest](offershiftrequest.md) | Read properties and relationships of all **offerShiftRequest** objects in a team. |
| [Approve](../api/offershiftrequest-approve.md)|None|Approve an **offerShiftRequest**. |
| [Approve for user](../api/schedulechangerequest-approveforuser.md)|None|Approve an [offerShiftRequest](../resources/offershiftrequest.md) object for a user. This action only supports application permissions.|
| [Decline](../api/offershiftrequest-decline.md)|None|Decline an **offerShiftRequest**. |
| [Decline for user](../api/schedulechangerequest-declineforuser.md)|None|Decline an [offerShiftRequest](../resources/offershiftrequest.md) object for a user. This action only supports application permissions.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|recipientActionDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|recipientActionMessage|String| Custom message sent by recipient of the offer shift request. |
|recipientUserId|String| User id of the recipient of the offer shift request.|
|senderShiftId|String| User id of the sender of the offer shift request.|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.offerShiftRequest"
}-->

```json
{
  "recipientActionDateTime": "String (timestamp)",
  "recipientActionMessage": "String",
  "recipientUserId": "String",
  "senderShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "offerShiftRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


