# HistoryItem resource type

A history item for a user activity for an app.

## Methods

|Method | Description|
|:------|:----------|
|PUT /me/activities/{id}/historyItems/{id} | Creates or replaces an existing historyItem for that activity (upsert), id needs to be a GUID|
|DELETE /me/activities/{id}/historyItmes/{id} | Deletes the specified historyItem for that activity|

## Properties

|Name | Type | Nullable | Description|
|:---|:------|:---------|:-----------|
|status | EnumType | N | Status code used to identify valid objects; set by the server and not caller-modifiable (Values: active, updated, deleted, ignored)|
|userTimezone | String | Y | The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation|
|createdDateTime | DateTimeOffset | N | DateTime in UTC when the object was created on the server (set by the server)|
|lastModifiedDateTime | DateTimeOffset | N | DateTime in UTC when the object was modified on the server (set by the server)|
|id | String | N | Client-set GUID for the history item object|
|startedDateTime | DateTimeOffset | N | UTC DateTime when the historyItem (activity session) was started, required for timeline history|
|lastActiveDateTime | DateTimeOffset | Y | UTC DateTime when the historyItem (activity session) was last understood as active or finished - if null, historyItem status should be Ongoing|
|expirationDateTime | DateTimeOffset | Y | UTC DateTime when the historyItem will undergo hard-delete, can be client-set|
|activeDurationSeconds | int | Y | The duration of active user engagement; if not supplied, this is calculated from the startedDateTime and lastActiveDateTime|

## JSON Representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "lastActiveDateTime",
    "activeDurationSeconds"
  ],
  "@odata.type": "microsoft.graph.historyitem"
}-->

```json
{
    "startedDateTime": "DateTimeOffset",
    "userTimezone": "String",
    "lastActiveDateTime": "DateTimeOffset",
    "activeDurationSeconds":"int",
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
