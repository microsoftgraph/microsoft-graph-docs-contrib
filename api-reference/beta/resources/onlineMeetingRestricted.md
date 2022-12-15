---
title: "onlineMeetingRestricted resource type"
description: "Specifies the reasons if the participant is having a restricted experience."
author: "zihzhan"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# onlineMeetingRestricted resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specified restricted experience reasons for a participant.

## Properties

| Property        | Type    | Description|
|:----------------|:--------|:----------|
| videoDisabled     | [onlineMeetingVideoDisabledReason](#onlineMeetingVideoDisabledReason-values) | Specifies the reason if participant's video is disabled. |
| contentSharingDisabled     | [onlineMeetingContentSharingDisabledreason](#onlineMeetingContentSharingDisabledreason-values) | Specifies the reason if shared content from the participant is disabled. |

### onlineMeetingVideoDisabledReason values

| Value                    | Description     |
| ------------------------ | --------------------------------------------------- |
| `watermarkProtection`  | The meeting content is marked watermarked but the user joined from an unsupported client.  |

### onlineMeetingContentSharingDisabledreason values

| Value                    | Description     |
| ------------------------ | --------------------------------------------------- |
| `watermarkProtection`  | The meeting content is marked watermarked but the user joined from an unsupported client.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.onlineMeetingRestricted"
}-->
```json
{
  "videoDisabled": {"@odata.type": "microsoft.graph.onlineMeetingVideoDisabledReason"},
  "contentSharingDisabled": {"@odata.type": "microsoft.graph.onlineMeetingContentSharingDisabledreason"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onlineMeetingRestricted resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
