---
title: "outOfOfficeSettings resource type"
description: "Represents the out-of-office settings related to the presence of a user."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/15/2025
---

# outOfOfficeSettings resource type

Namespace: microsoft.graph

Represents the out-of-office settings related to the [presence](presence.md) of a user.

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| isOutOfOffice      | Boolean  | If `true`, either of the following is met:</br><ul><li>The current time falls within the out-of-office window configured in Outlook or Teams.</li><li>An event marked as "Show as Out of Office" appears on the user's calendar.</li></ul>Otherwise, false. |
| message           | String  | The out-of-office message configured by the user in the Outlook client (Automatic replies) or the Teams client (Schedule out of office). |

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
  "isOutOfOffice": "Boolean",
  "message": "String"
}
```
