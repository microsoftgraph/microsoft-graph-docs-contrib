---
title: "teamMembersNotificationRecipient resource type"
description: "Represents the recipient (team members) of a notification sent in a Microsoft Teams activity feed."
author: "eddie-lee-msft"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamMembersNotificationRecipient resource type

Namespace: microsoft.graph

Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the team members.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
| Property | Type   | Description                                                                       |
|:---------|:-------|:----------------------------------------------------------------------------------|
| teamId   | String | The unique identifier for the team whose members should receive the notification. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamMembersNotificationRecipient"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.teamMembersNotificationRecipient",
  "teamId": "String"
}
```
