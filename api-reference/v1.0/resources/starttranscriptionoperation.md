--- 
title: "StartTranscriptionOperation resource type"
description: "Describes the response format of a start transcription operation."
author: "calvintang"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# StartTranscriptionOperation resource type

Namespace: microsoft.graph

Describes the response format of a call start transcription operation.

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| clientContext                  | String                      | Unique client context string. Can have a maximum of 256 characters.                                                                               |
| status                         | String                      | Possible values are: `notStarted`, `running`, `completed`, `failed`. Read-only.                                                 |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.startTranscriptionOperation"
}-->
```json
{
  "@odata.type": "#microsoft.graph.startTranscriptionOperation",
  "clientContext": "String (identifier)",
  "status": "NotStarted | Running | Completed | Failed",
  "resultInfo": null
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-11-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "startTranscriptionOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

