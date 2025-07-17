---
title: "imageInfo resource type"
description: "A complex type for representing the **attribution** property in the visualInfo part of the activity object."
ms.localizationpriority: medium
ms.subservice: "project-rome"
author: "ailae"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# imageInfo resource type

Namespace: microsoft.graph

A complex type for representing the **attribution** property in the [visualInfo](../resources/projectrome-visualinfo.md) part of the [activity](../resources/projectrome-activity.md) object.

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|addImageQuery | Boolean | Optional; parameter used to indicate the server is able to render image dynamically in response to parameterization. For example – a high contrast image|
|alternateText | String | Optional; alt-text accessible content for the image|
|iconUrl | String | Optional; URI that points to an icon which represents the application used to generate the activity|

## JSON Representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "iconUrl",
    "alternateText",
    "addImageQuery"
  ],
  "@odata.type": "microsoft.graph.imageInfo"
}-->

```json
{
    "@odata.type": "microsoft.graph.imageInfo",
    "iconUrl": "String (URL)",
    "alternateText": "String",
    "addImageQuery": "boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "imageinfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

