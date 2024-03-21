---
title: "senddtmftonesoperation resource type"
description: "The sendDtmfTones operation to obtain the result of the sendDtmfTones action."
author: "jackry2023"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# sendDtmfTonesOperation resource type

Namespace: microsoft.graph

Represents an operation to get the results of an action to send DTMF tones in a call. 

Inherits from [commsOperation](commsoperation.md).

## Properties

| Property            | Type                        | Description|
|:--------------------|:----------------------------|:-----------------------------------------------------------------------------------|
| clientContext       | String                      | A unique string that the client sends to Microsoft Graph to keep context in multiple requests. Maximum size is 256 characters. |
| completionReason    | [sendDtmfCompletionReason](senddtmftonesoperation.md#senddtmfcompletionreason-values)    | The results of the action. Possible values are: `unknown`, `completedSuccessfully`, `mediaOperationCanceled`, `unknownfutureValue`. |
| id                  | String                      | Read-only.                                                                         |
| resultInfo          | [resultInfo](resultinfo.md) | The result information with a specific status code, subcode, and message. Read-only.        |
| status              | String                      | The status of the operation. Possible values are: `notStarted`, `running`, `completed`, `failed`.               |

### sendDtmfCompletionReason values
| Member            | Description|
|:--------------------|:------------------------------------|
| unknown | Completion reason with unknown error. |
| completedSuccessfully | Successful completion. |
| mediaOperationCanceled | Media operation was canceled. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

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
