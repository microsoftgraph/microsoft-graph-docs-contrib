---
title: "swapShiftsChangeRequest resource type"
description: "Represents type of shift request to swap a shift with another user in the team."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# swapShiftsChangeRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a type of shift request to swap a [shift](../resources/shift.md) with another user in the [team](../resources/team.md).

Inherits from [offerShiftRequest](../resources/offershiftrequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/swapshiftschangerequest-list.md) | Collection of [swapShiftsChangeRequest](swapshiftschangerequest.md) | List the properties and relationships of **swapShiftsChangeRequest** objects in a team. |
| [Create](../api/swapshiftschangerequest-post.md) | [swapshiftschangerequest](swapshiftschangerequest.md) | Create an instance of an **swapShiftsChangeRequest** object. |
| [Get](../api/swapshiftschangerequest-get.md) | [swapShiftsChangeRequest](swapshiftschangerequest.md) | Read the properties and relationships of a **swapShiftsChangeRequest** object. |
| [Approve](../api/swapshiftschangerequest-approve.md)|None|Approve an **swapShiftsChangeRequest**. |
| [Approve for user](../api/schedulechangerequest-approveforuser.md)|None|Approve a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user. This action only supports application permissions.|
| [Decline](../api/swapshiftschangerequest-decline.md)|None|Decline an **swapShiftsChangeRequest**. |
| [Decline for user](../api/schedulechangerequest-declineforuser.md)|None|Decline a [swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) object for a user. This action only supports application permissions.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|recipientShiftId|String|Shift ID for the recipient user with whom the request is to swap.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.swapShiftsChangeRequest"
}-->

```json
{
  "recipientShiftId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "swapShiftsChangeRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


