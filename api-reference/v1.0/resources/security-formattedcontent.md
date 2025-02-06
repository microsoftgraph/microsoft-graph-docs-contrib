---
title: "formattedContent resource type"
description: "Represents formatted data content, and indicates both the content and format of that data."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# formattedContent resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents formatted data content, and indicates both the content and format of that data. This resource doesn't represent large binary contents.

## Properties

| Property | Type                                   | Description                                                                                           |
| :------- | :------------------------------------- | :---------------------------------------------------------------------------------------------------- |
| content  | String                                 | The content of this **formattedContent**.                                                             |
| format   | microsoft.graph.security.contentFormat | The format of the content. The possible values are: `text`, `html`, `markdown`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.formattedContent"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.formattedContent",
  "content": "String",
  "format": "String"
}
```
