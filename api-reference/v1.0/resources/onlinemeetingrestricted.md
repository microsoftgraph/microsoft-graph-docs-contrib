---
title: "onlineMeetingRestricted resource type"
description: "Indicates the reason or reasons media content from a participant is restricted."
author: "zihzhan-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# onlineMeetingRestricted resource type

Namespace: microsoft.graph

Indicates the reason or reasons media content from a participant is restricted.

## Properties

| Property               | Type                                                                                           | Description                                                                |
|:-----------------------|:-----------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------|
| contentSharingDisabled | [onlineMeetingContentSharingDisabledReason](#onlinemeetingcontentsharingdisabledreason-values) | Specifies the reason shared content from this participant is disabled. Possible values are: `watermarkProtection`, `unknownFutureValue`.  |
| videoDisabled          | [onlineMeetingVideoDisabledReason](#onlinemeetingvideodisabledreason-values)                   | Specifies the reason video from this participant is disabled. Possible values are: `watermarkProtection`, `unknownFutureValue`.         |

### onlineMeetingContentSharingDisabledReason values

| Value               | Description                                                                                 |
|:--------------------|:--------------------------------------------------------------------------------------------|
| watermarkProtection | The meeting content is marked _watermarked_ but the user joined from an unsupported client. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                           |

### onlineMeetingVideoDisabledReason values

| Value               | Description                                                                                 |
|:--------------------|:--------------------------------------------------------------------------------------------|
| watermarkProtection | The meeting content is marked _watermarked_ but the user joined from an unsupported client. |
| unknownFutureValue  | Evolvable enumeration sentinel value. Do not use.                                           |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.onlineMeetingRestricted"
}-->
```json
{
  "contentSharingDisabled": {"@odata.type": "microsoft.graph.onlineMeetingContentSharingDisabledReason"},
  "videoDisabled": {"@odata.type": "microsoft.graph.onlineMeetingVideoDisabledReason"}
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
