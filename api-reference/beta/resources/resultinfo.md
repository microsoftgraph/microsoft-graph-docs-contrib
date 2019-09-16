---
title: "resultInfo resource type"
description: "The resultInfo type."
author: "VinodRavichandran"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---

# resultInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The resultInfo type.

## Properties

| Property | Type   | Description          |
| :------- | :----- | :------------------  |
| code     | Int32 | The result code.     |
| message  | String | The message.         |
| subcode  | Int32 | The result sub-code. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resultInfo"
}-->
```json
{
  "code": 0,
  "message": "String",
  "subcode": 0
}
```

## Example Error result

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.resultInfo"
}-->
```json
{
  "code": 100,
  "message": "Internal Server Error.",
  "subcode": 20
}
```

## Example Generic success result

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.resultInfo"
}-->
```json
{
  "code": 200,
  "message": "",
  "subcode": 0
}
```

## Example Record Success result

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.resultInfo"
}-->
```json
{
  "code": 200,
  "message": "",
  "subcode": 7000
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "resultInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
