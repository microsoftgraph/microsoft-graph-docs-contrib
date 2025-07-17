---
title: "activityHistoryItem resource type"
description: "Represents a history item for an activity in an app."
ms.localizationpriority: medium
ms.subservice: "project-rome"
doc_type: resourcePageType
author: "ailae"
ms.date: 07/22/2024
---

# activityHistoryItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a history item for an [activity](projectrome-activity.md) in an app. User activities represent a single destination within your app; for example, a TV show, a document, or a current campaign in a video game. When a user engages with that activity, the engagement is captured as a history item that indicates the start and end time for that activity. As the user re-engages with that activity over time, multiple history items are recorded for a single user activity.

When an app creates a session, a **activityHistoryItem** object should be added to the **activity** object to reflect the period of user engagement. Each time a user re-engages with an activity, a new **activityHistoryItem** is added to the activity to accrue user engagement.

## Methods

|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create or replace a history item](../api/projectrome-put-historyitem.md) | [activityHistoryItem](projectrome-historyitem.md) | Create or replace an existing **activityHistoryItem** for that activity (upsert). The ID needs to be a GUID.|
|[Delete a history item](../api/projectrome-delete-historyitem.md) | No Content | Delete the specified **activityHistoryItem** for that activity.|

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|status | string | Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.|
|userTimezone | String | Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.|
|createdDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was created on the server.|
|lastModifiedDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was modified on the server.|
|id | String | Required. Client-set GUID for the **activityHistoryItem** object.|
|startedDateTime | DateTimeOffset | Required. UTC DateTime when the **activityHistoryItem** (activity session) was started. Required for timeline history.|
|lastActiveDateTime | DateTimeOffset | Optional. UTC DateTime when the **activityHistoryItem** (activity session) was last understood as active or finished - if null, **activityHistoryItem** status should be Ongoing.|
|expirationDateTime | DateTimeOffset | Optional. UTC DateTime when the **activityHistoryItem** will undergo hard-delete. Can be set by the client.|
|activeDurationSeconds | int | Optional. The duration of active user engagement. if not supplied, this is calculated from the **startedDateTime** and **lastActiveDateTime**.|

## Relationships

|Relationship | Type | Description|
|:------------|:-----|:-----------|
|activity| [userActivity](../resources/projectrome-activity.md) | Optional. NavigationProperty/Containment; navigation property to the associated activity.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "lastActiveDateTime",
    "activeDurationSeconds"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.activityHistoryItem"
}-->

```json
{
    "activeDurationSeconds":"int",
    "createdDateTime": "DateTimeOffset",
    "expirationDateTime": "DateTimeOffset",
    "id": "String",
    "lastActiveDateTime": "DateTimeOffset",
    "lastModifiedDateTime": "DateTimeOffset",
    "startedDateTime": "DateTimeOffset",
    "status": "String",
    "userTimezone": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "historyitem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


