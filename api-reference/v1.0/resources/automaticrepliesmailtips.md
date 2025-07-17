---
title: "automaticRepliesMailTips resource type"
description: "MailTips about any automatic replies that have been set up on a mailbox."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: mail
doc_type: resourcePageType
ms.date: 04/03/2024
---

# automaticRepliesMailTips resource type

Namespace: microsoft.graph


[MailTips](../resources/mailtips.md) about any automatic replies that have been set up on a mailbox.

## Properties
| Property	   | Type	|Description|
|:-----|:-----|:-----|
| message | String | The automatic reply message. |
| messageLanguage | [localeInfo](../resources/localeinfo.md) | The language that the automatic reply message is in. |
| scheduledEndTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time that automatic replies are set to end. |
| scheduledStartTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | The date and time that automatic replies are set to begin. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "messageLanguage",
    "scheduledEndTime",
    "scheduledStartTime"
  ],
  "@odata.type": "microsoft.graph.automaticRepliesMailTips"
}-->

```json
{
  "message": "string",
  "messageLanguage": {"@odata.type": "microsoft.graph.localeInfo"},
  "scheduledEndTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "scheduledStartTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "automaticRepliesMailTips resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

