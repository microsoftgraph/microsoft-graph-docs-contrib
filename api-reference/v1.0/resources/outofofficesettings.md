---
title: "outOfOfficeSettings resource type"
description: "Represents the out of office message information for a user presence entity"
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/15/2025
---

# outOfOfficeSettings resource type

Namespace: microsoft.graph

Represents the out of office settings related to the [presence](presence.md) of a user.

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| message           | String  | The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office). |
| isOutOfOffice      | Boolean  | True if either:</br><ul><li>It's currently in the out of office time window configured on the Outlook or Teams client.</li><li>Thert's currently an event on the user's calendar that's mark as Show as Out of Office</li></ul></br>Otherwise, false. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.outOfOfficeSettings"
}-->
```json
{
  "message": "String",
  "isOutOfOffice": "Boolean"
}
```
