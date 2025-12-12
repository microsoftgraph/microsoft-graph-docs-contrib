--- 
title: "stopTranscriptionOperation resource type"
ms.date: 11/15/2024
description: "Describes the response format of a stop transcription operation."
author: "calvintang"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# stopTranscriptionOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the response format of a call stop transcription operation.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :---------------------------------------------------------|
| clientContext                  | String                      | Unique client context string. It can have a maximum of 256 characters. |                                                                          
| status                         | String                      | The possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.|                                                 

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.stopTranscriptionOperation"
}-->
```json
{
  "@odata.type": "#microsoft.graph.stopTranscriptionOperation",
  "clientContext": "String (identifier)",
  "status": "NotStarted | Running | Completed | Failed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-11-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "stopTranscriptionOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

