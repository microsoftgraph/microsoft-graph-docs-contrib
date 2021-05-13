---
title: "teamMembersNotificationRecipient resource type"
description:  Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a team.
author: eddie-lee-msft
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# teamMembersNotificationRecipient resource type

Namespace: microsoft.graph

Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a team.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamId|String|Identifier for the team.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

