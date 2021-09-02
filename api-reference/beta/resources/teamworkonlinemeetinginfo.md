---
title: "teamworkOnlineMeetingInfo resource type"
description: "Represents details about an online meeting in Microsoft Teams."
author: "jecha"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkOnlineMeetingInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about an online meeting in Microsoft Teams.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String|The identifier of the calendar event associated with the meeting.|
|joinWebUrl|String|The URL which can be clicked on to join or uniquely identify the meeting.|
|organizer|[teamworkUserIdentity](teamworkuseridentity.md)|The organizer of the meeting.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkOnlineMeetingInfo"
}
-->
``` json
{
  "calendarEventId": "string",
  "joinWebUrl": "string",
  "organizer": {"@odata.type": "microsoft.graph.teamworkUserIdentity"}
}
```

## See also
- [Chat](chat.md)
