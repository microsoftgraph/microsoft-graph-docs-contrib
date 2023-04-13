---
title: "formattedContent resource type"
description: "Represents formatted data content, and indicates both the content and format of that data."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# formattedContent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents formatted data content, and indicates both the content and format of that data. This resource doesn't represent large binary contents.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|The content of this **formattedContent**.  |
|format|microsoft.graph.security.contentFormat|The format of the content. The possible values are: `text`, `html`, `markdown`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.formattedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.formattedContent",
  "content": "String",
  "format": "String"
}
```
