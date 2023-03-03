---
title: "webPartData resource type"
description: Represents the data of a given web part.
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# webPartData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data of a given web part.

## Properties

| Property               | Type                                                             | Description                                                                                                                                         |
| :--------------------- | :--------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------- |
| audiences              | String collection                                                | Audience information of the web part. By using this property, specific content will be prioritized to specific audiences.                            |
| dataVersion            | String                                                           | Data version of the web part. The value is defined by the web part developer. Different dataVersions usually refers to a different property structure. |
| description            | String                                                           | Description of the web part.                                                                                                                         |
| properties             | [Json](../resources/json.md)                                     | Properties bag of the web part.                                                                                                                      |
| serverProcessedContent | [serverProcessedContent](../resources/serverprocessedcontent.md) | Contains collections of data that can be processed by server side services like search index and link fixup.                                        |
| title                  | String                                                           | Title of the web part.                                                                                                                               |

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
