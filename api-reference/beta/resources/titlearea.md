---
title: 'titleArea resource type'
description: Represents the title area of a given SharePoint page.
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# titleArea resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the title area of a given SharePoint page.

## Properties

| Property                | Type                                                                                      | Description                                                                                                                                                   |
| :---------------------- | :---------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| alternativeText         | String                                                                                    | Alternative text on the title area.                                                                                                                           |
| enableGradientEffect    | Boolean                                                                                   | Indicates whether the title area has a gradient effect enabled.                                                                                               |
| imageWebUrl                  | String                                                                                    | URL of the image in the title area.                                                                                                                           |
| layout                  | [titleAreaLayoutType](../resources/titlearea.md#titlearealayouttype-values)               | Enumeration value that indicates the layout of the title area. The possible values are: `imageAndTitle`, `plain`, `colorBlock`, `overlap`, `unknownFutureValue`. |
| serverProcessedContent | [serverProcessedContent](../resources/serverprocessedcontent.md) | Contains collections of data that can be processed by server side services like search index and link fixup. |
| showAuthor              | Boolean                                                                                   | Indicates whether the author should be shown in title area.                                                                                                  |
| showPublishedDate       | Boolean                                                                                   | Indicates whether the published date should be shown in title area.                                                                                           |
| showTextBlockAboveTitle | Boolean                                                                                   | Indicates whether the text block above title should be shown in title area.                                                                                   |
| textAboveTitle          | String                                                                                    | The text above title line.                                                                                                                                    |
| textAlignment           | [titleAreaTextAlignmentType](../resources/titlearea.md#titleareatextalignmenttype-values) | Enumeration value that indicates the text alignment of the title area. The possible values are: `left`, `center`, `unknownFutureValue`.                       |

### titleAreaLayoutType values

| Member             | Description                                   |
| :----------------- | :-------------------------------------------- |
| imageAndTitle      | The title area has an image and title layout. |
| plain              | The title area has a plain layout.            |
| colorBlock         | The title area has a color block layout.      |
| overlap            | The title area has an overlap layout.         |
| unknownFutureValue | Marker value for future compatibility.        |

### titleAreaTextAlignmentType values

| Member             | Description                               |
| :----------------- | :---------------------------------------- |
| left               | The text in title area is left-aligned.   |
| center             | The text in title area is center-aligned. |
| unknownFutureValue | Marker value for future compatibility.    |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.titleArea"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.titleArea",
  "alternativeText": "String",
  "enableGradientEffect": "Boolean",
  "imageWebUrl": "String",
  "layout": "String",
  "serverProcessedContent": {
    "@odata.type": "microsoft.graph.serverProcessedContent"
  },
  "showAuthor": "Boolean",
  "showPublishedDate": "Boolean",
  "showTextBlockAboveTitle": "Boolean",
  "textAboveTitle": "String",
  "textAlignment": "String"
}
```
