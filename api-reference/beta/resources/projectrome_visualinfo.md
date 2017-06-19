# VisualInfo resource type

A  complex type for representing visual elements in the [activity](../resources/projectrome_activity.md) object.

## Properties

|Name | Type | Description|
|:----|:------|:-----------|
|displayText | String | Rquired; short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)|
|description | String | Optional; longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)|
|backgroundColor | String | Optional; Background color used to render the activity in the UI - brand color for the application source of the activity|
|content | Untyped JSON object | Optional; custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI|
|attribution | [imageInfo](../resources/projectrome_imageinfo.md) | Optional; JSON object used to represent an icon which represents the application used to generate the activity|

## JSON Representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attribution",
    "description",
    "backgroundColor",
    "content"
  ],
  "@odata.type": "microsoft.graph.activity.visualinfo"
}-->

```json
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "visualinfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
