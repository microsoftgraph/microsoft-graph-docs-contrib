---
title: "tokenMeetingInfo resource type"
description: "The tokenMeetingInfo type."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tokenMeetingInfo resource type

Namespace: microsoft.graph

This is the token information that allows you to join an existing meeting. This is obtained as part of the incoming call notification. 

In the event that a call is disconnected, this information can help you rejoin that call.

## Properties

| Property                     | Type    | Description                                                                    |
| :--------------------------- | :------ | :----------------------------------------------------------------------------- |
| token                        | String  | The token used to join the call.                                                 |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tokenMeetingInfo"
}-->
```json
{
    "token": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "tokenMeetingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

