# Activity resource type

An activity for a user and a given app in Project Rome.

## Methods

|Method | Description|
|:------|:-----------|
|PUT /me/activities/{appActivityId} | Creates or replaces an existing activity (upsert) - the appActivityId needs to be URL-safe (all characters except for RFC 2396 unreserved characters must be converted to their hexadecimal representation), but the original appActivityId does not have to be URL-safe |
|DELETE /me/activities/{id} | Deletes the specified activity for that user from your app|


## Properties

|Name | Type | Nullable | Description|
|:----|:-----|:---------|:-----------|
|userTimezone | String | Y | The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support ||cross-platform representation|
|createdDateTime | DateTimeOffset | N | DateTime in UTC when the object was created on the server (set by the server)|
|lastModifiedDateTime | DateTimeOffset | N | DateTime in UTC when the object was modified on the server (set by server)|
|id | String | N | Server generated ID used for URL addressing|
|appActivityId | String | N | The unique activity id in the context of the app - supplied by caller and immutable thereafter|
|activitySourceHost | String | N | URL pointing to the JSON file which stores the cross-platform identity mapping for the application|
|appDisplayName | String | Y | Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device|
|activationUrl | String | N | URL used to launch the activity in the best native experience represented by the appId, may launch a web-based app if no native app exists|
|fallbackUrl | String | Y | URL used to launch the activity in a web-based app if available|
|contentUrl | String | Y | Used in the event the content may be rendered outside of a native or web-based app experience (example: pointer to an item in an RSS feed)|
|visualElements| [visualInfo](../resources/projectrome_visualinfo.md)  (Edm.ComplexType), JSON Object | N |
|contentInfo | EDM.Untyped, JSON object | Y | Custom piece of data; JSON-LD extensible description of content according to schema.org syntax|
|historyItems | NavigationProperty | Y | Containment; navigation property to the activity's historyItems|

## JSON Representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "appDisplayName",
    "fallbackUrl",
    "contentUrl",
    "contentInfo",
    "visualElements.attribution",
    "visualElements.description",
    "visualElements.backgroundColor",
    "visualElements.content"
  ],
  "@odata.type": "microsoft.graph.activity"
}-->

```json
{
    "appActivityId": "String",
    "activitySourceHost": "String (host name/domain/URL)",
    "userTimezone": "String",
    "appDisplayName": "String",
    "activationUrl": "String (URL)",
    "contentUrl": "String (URL)",
    "fallbackUrl": "String (URL)",
    "contentInfo": {
        // JSON object
    },
    "visualElements": {
        "attribution": {
            "iconUrl": "String (URL)",
            "alternativeText": "String",
            "addImageQuery": "boolean",
        },
        "description": "String",
        "backgroundColor": "String",
        "displayText": "String",
        "content": {
            // JSON object
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
