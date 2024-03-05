---
title: "attendeeNotificationInfo resource type"
description: "Represents information about an external attendee."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# attendeeNotificationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about an external attendee.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|phoneNumber|String|The phone number of the external attendee. Required.|
|timeZone|String|The time zone of the external attendee. The timeZone property can be set to any of the time zones currently supported by [Windows](/windows-hardware/manufacture/desktop/default-time-zones). Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
   "@odata.type": "microsoft.graph.attendeeNotificationInfo"
}-->
   ```json
{
    "phoneNumber": "String",
    "timeZone": "String",
}
```
