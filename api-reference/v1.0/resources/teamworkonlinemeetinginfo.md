---
title: "teamworkOnlineMeetingInfo resource type"
description: "Represents details about an online meeting in Microsoft Teams."
author: "jecha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkOnlineMeetingInfo resource type

Namespace: microsoft.graph

Represents details about an online meeting in Microsoft Teams.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calendarEventId|String|The identifier of the calendar event associated with the meeting.|
|joinWebUrl|String|The URL that users click to join or uniquely identify the meeting.|
|organizer|[teamworkUserIdentity](teamworkuseridentity.md)|The organizer of the meeting.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

## Related content
- [Chat](chat.md)
