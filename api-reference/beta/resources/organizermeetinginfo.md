---
title: "organizerMeetingInfo resource type"
description: "Meeting information containing the organizer of the meeting."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# organizerMeetingInfo resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This contains details about the meeting organizer. 

To join an existing meeting, you must either provide a combination of the organizerMeetingInfo 
and the [chatInfo](./chatinfo.md) resource types, or the [tokenMeetingInfo](./tokenmeetinginfo.md) resource type by itself.

## Properties

| Property                     | Type                          | Description                                     |
| :--------------------------- | :---------------------------- | :-----------------------------------------------|
| organizer                    | [identitySet](identityset.md) | The organizer Azure Active Directory identity.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organizerMeetingInfo"
}-->
```json
{
  "organizer": { "@odata.type": "#microsoft.graph.identitySet" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "organizerMeetingInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
