---
title: "resultInfo resource type"
description: "Provides success and failure-specific result information."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# resultInfo resource type

Namespace: microsoft.graph

Provides success and failure-specific result information. 

The code specifies if the result is a generic success or failure. If the code is 2xx, it's a success; if it's 4xx, it's a client error; and if it's 5xx, it's a server error.

The subcodes provide supplementary information related to the type of success or failure (for example, a call transfer was successful).


## Properties

| Property | Type   | Description          |
| :------- | :----- | :------------------  |
| code     | Int32 | The result code.     |
| message  | String | The message.         |
| subcode  | Int32 | The result subcode. |

## JSON representation

The following JSON representation shows the resource type.

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

