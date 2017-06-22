# activity resource type

Great apps help users do great things — enabling a wide range of creative, productivity, and entertainment scenarios. Historically, it has been difficult for users to get back to those activities, especially across multiple devices.

By writing user activities into the Microsoft Graph, app developers have new tools to get users back into their app. User activities created by your app will appear on all of your devices — this helps users switch between devices, and we will help users install your app on new devices. Activities are exposed to users as deep links to specific content within your app. App developers can express specific content within your app as a destination which is showcased in Windows, and accessible on iOS and Android devices through Cortana Notifications.

Each user activity represents a single destination within your app: such as a TV show, document, or your current campaign in a game. When a user engages with that activity, the engagement is captured as a [history item](projectrome_historyitem.md) indicating the start and end time for that activity. As you re-engage with that user activity over time, multiple history items will be recorded for a single user activity.

Since every app is different, it's up to each app developer to understand the best way to map actions within your application to user activities which will appear in Cortana and Timeline. (For example, games might create an activity for each campaign, document authoring apps might create an activity for each unique document, and line-of-business apps might create an activity for each workflow.)

Your user activities will be showcased in Cortana and Timeline User Experiences which are focused on increasing users productivity and efficiency — helping users get back to content they worked on in the past.

## Methods

|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create or replace activity](../api/projectrome_put_activity.md) | [activity](projectrome_activity.md) |Creates or replaces an existing activity (upsert) - the appActivityId needs to be URL-safe (all characters except for RFC 2396 unreserved characters must be converted to their hexadecimal representation), but the original appActivityId does not have to be URL-safe |
|[Delete an activity](../api/projectrome_delete_activity.md) | No Content | Deletes the specified activity for that user from your app|

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|userTimezone | String | Optional; the timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation|
|createdDateTime | DateTimeOffset | Set by the server; DateTime in UTC when the object was created on the server |
|lastModifiedDateTime | DateTimeOffset | Set by the server; DateTime in UTC when the object was modified on the server |
|id | String | Server generated ID used for URL addressing|
|appActivityId | String | Required; the unique activity id in the context of the app - supplied by caller and immutable thereafter|
|activitySourceHost | String | Required; URL pointing to the JSON file which stores the cross-platform identity mapping for the application|
|appDisplayName | String | Optional; short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device|
|activationUrl | String | Required; URL used to launch the activity in the best native experience represented by the appId, may launch a web-based app if no native app exists|
|fallbackUrl | String | Optional; URL used to launch the activity in a web-based app if available|
|contentUrl | String | Optional; Used in the event the content may be rendered outside of a native or web-based app experience (example: pointer to an item in an RSS feed)|
|visualElements| [visualInfo](../resources/projectrome_visualinfo.md) | Required; the object containing information to render the activity in the UX
|contentInfo | Untyped JSON object | Optional; custom piece of data - JSON-LD extensible description of content according to schema.org syntax|
|historyItems | [historyItem](../resources/projectrome_historyitem.md) collection | Optional; NavigationProperty/Containment; navigation property to the activity's historyItems|

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
