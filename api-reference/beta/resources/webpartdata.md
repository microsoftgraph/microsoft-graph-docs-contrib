---
title: "webPartData resource type"
description: Represents the data of a given WebPart
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# webPartData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data of a given WebPart.

## Properties

| Property               | Type                                                             | Description                                                                                                                                         |
| :--------------------- | :--------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------- |
| audiences              | String collection                                                | Audience information of the webPart. By using this property, specific content will be prioritized to specific audiences.                            |
| dataVersion            | String                                                           | Data version of the webPart. The value is defined by the webPart's developer. Different dataVersion usually refers to different property structure. |
| description            | String                                                           | Description of the WebPart.                                                                                                                         |
| properties             | [Json](../resources/json.md)                                     | Properties bag of the WebPart.                                                                                                                      |
| serverProcessedContent | [serverProcessedContent](../resources/serverprocessedcontent.md) | Contains collections of data that can be processed by server side services like search index and link fixup.                                        |
| title                  | String                                                           | Title of the WebPart.                                                                                                                               |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webPartData"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.webPartData",
  "audiences": ["String"],
  "dataVersion": "String",
  "description": "String",
  "properties": {
    "@odata.type": "microsoft.graph.Json"
  },
  "serverProcessedContent": {
    "@odata.type": "microsoft.graph.serverProcessedContent"
  },
  "title": "String"
}
```
