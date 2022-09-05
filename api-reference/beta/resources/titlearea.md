---
title: "titleArea resource type"
description: Represent the title area of a given SharePoint page
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# titleArea resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the title area of a given SharePoint page.

## Properties

| Property                | Type                       | Description                                                                                                                                                  |
| :---------------------- | :------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| alternativeText         | String                     | Alternative text on the title area.                                                                                                                          |
| enableGradientEffect    | Boolean                    | Indicates whether the title area has a gradient effect enabled                                                                                               |
| image                   | String                     | Url of The image in the title area.                                                                                                                          |
| layout                  | titleAreaLayoutType        | Enumeration value that indicates the layout of the title area.The possible values are: `cutInShape`, `plain`, `colorBlock`, `overlap`, `unknownFutureValue`. |
| showAuthor              | Boolean                    | Indicates whether the author should be shown in title area.                                                                                                  |
| showPublishedDate       | Boolean                    | Indicates whether the published date should be shown in title area.                                                                                          |
| showTextBlockAboveTitle | Boolean                    | Indicates whether the text block above title should be shown in title area.                                                                                  |
| textAboveTitle          | String                     | The text above title line.                                                                                                                                   |
| textAlignment           | titleAreaTextAlignmentType | Enumeration value that indicates the text alignment of the title area. The possible values are: `left`, `center`, `unknownFutureValue`.                      |

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
  "image": "String",
  "layout": "String",
  "showAuthor": "Boolean",
  "showPublishedDate": "Boolean",
  "showTextBlockAboveTitle": "Boolean",
  "textAboveTitle": "String",
  "textAlignment": "String"
}
```
