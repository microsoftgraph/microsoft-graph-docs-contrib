---
title: "historyItem resource type"
description: "Represents a history item for an activity in an app. User activities represent a single destination within your app."
ms.localizationpriority: medium
ms.prod: "project-rome"
author: "ailae"
doc_type: resourcePageType
---

# historyItem resource type

Namespace: microsoft.graph

Represents a history item for an [activity](projectrome-activity.md) in an app. User activities represent a single destination within your app; for example, a TV show, a document, or a current campaign in a video game. When a user engages with that activity, the engagement is captured as a history item that indicates the start and end time for that activity. As the user re-engages with that activity over time, multiple history items are recorded for a single user activity.

When an app creates a session, a **historyItem** object should be added to the **activity** object to reflect the period of user engagement. Each time a user re-engages with an activity, a new **historyItem** is added to the activity to accrue user engagement.

## Methods

|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create or replace historyItem](../api/projectrome-put-historyitem.md) | [historyItem](projectrome-historyitem.md) | Create or replace an existing **historyItem** for that activity (upsert). The ID needs to be a GUID.|
|[Delete a historyItem](../api/projectrome-delete-historyitem.md) | No Content | Delete the specified **historyItem** for that activity.|

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|activeDurationSeconds | int | Optional. The duration of active user engagement. if not supplied, this is calculated from the **startedDateTime** and **lastActiveDateTime**.|
|createdDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was created on the server.|
|expirationDateTime | DateTimeOffset | Optional. UTC DateTime when the **historyItem** will undergo hard-delete. Can be set by the client.|
|id | String | Required. Client-set GUID for the **historyItem** object.|
|lastActiveDateTime | DateTimeOffset | Optional. UTC DateTime when the **historyItem** (activity session) was last understood as active or finished - if null, **historyItem** status should be Ongoing.|
|lastModifiedDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was modified on the server.|
|startedDateTime | DateTimeOffset | Required. UTC DateTime when the **historyItem** (activity session) was started. Required for timeline history.|
|status | status | Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.|
|userTimezone | String | Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.|


## Relationships

|Relationship | Type | Description|
|:------------|:-----|:-----------|
|activity| [userActivity](../resources/projectrome-activity.md) | Optional. NavigationProperty/Containment; navigation property to the associated activity.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "lastActiveDateTime",
    "activeDurationSeconds"
  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.activityHistoryItem",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "countable": false,
        "selectable": false
      }
    }
  ]
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
<!-- {
  "type": "#page.annotation",
  "description": "historyitem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

