---
title: "senddtmftonesoperation resource type"
description: "The sendDtmfTones operation to obtain the result of the sendDtmfTones action."
author: "jackry2023"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# sendDtmfTonesOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation to get the results of an action to send DTMF tones in a call. It inherits from microsoft.graph.commsOperation.

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | Unique Client Context string that client sends to Graph for the client to keep context in multiple requests. Maximum limit is 256 characters. |
| completionReason    | [sendDtmfCompletionReason](senddtmftonesoperation.md#senddtmfcompletionreason-values)    | The results of the action. Possible values are: `unknown`, `completedSuccessfully`, `mediaOperationCanceled`, `unknownfutureValue`. |
| id                  | String                      | Read-only.                                                                         |
| resultInfo          | [resultInfo](resultinfo.md) | The result information with specific status code, sub code and message. Read-only.        |
| status              | String                      | The status of the operation. Possible values are: `notStarted`, `running`, `completed`, `failed`.               |

### sendDtmfCompletionReason values
| Member            | Description|
|:--------------------|:------------------------------------|
| unknown | Completion reason with unknown error. |
| completedSuccessfully | Successful completion. |
| mediaOperationCanceled | Media operation being cancelled. |
| unknownFutureValue | Reserved for future value. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sendDtmfTonesOperation"
}-->
```json
{
  "clientContext": "string",
  "completionReason": "string",
  "id": "string",
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "status": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "sendDtmfTonesOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
