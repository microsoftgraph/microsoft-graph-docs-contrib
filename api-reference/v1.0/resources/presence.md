---
title: "presence resource type"
description: "Contains information about a user's presence, including their availability and user activity."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 07/22/2024
---

# presence resource type

Namespace: microsoft.graph

Contains information about a user's presence, including their availability and user activity.

This resource supports subscribing to [change notifications](/graph/changenotifications-for-presence).

## Methods

| Method                                                                               | Return Type                                     | Description                                         |
| :----------------------------------------------------------------------------------- | :---------------------------------------------- | :-------------------------------------------------- |
| [Get presence](../api/presence-get.md)                                               | [presence](../resources/presence.md)            | Get a user's presence information.                  |
| [Get presence for multiple users](../api/cloudcommunications-getpresencesbyuserid.md) | [presence](../resources/presence.md) collection | Get the presence information for multiple users.    |
| [Set presence](../api/presence-setpresence.md)                                       |                                                 | Set an application's presence session for a user.   |
| [Clear presence](../api/presence-clearpresence.md)                                   |                                                 | Clear an application's presence session for a user. |
| [Set user preferred presence](../api/presence-setuserpreferredpresence.md)           |                                                 | Set the preferred availability and activity status for a user.                    |
| [Clear user preferred presence](../api/presence-clearuserpreferredpresence.md)       |                                                 | Clear the preferred availability and activity status for a user.                  |
| [Set user status message](../api/presence-setstatusmessage.md)                       |                                                 | Set a presence status message for a user. |

## Properties

| Property            | Type               | Description                                     |
| :------------------ | :------------------| :---------------------------------------        |
| activity            | String             | The supplemental information to a user's availability. Possible values are `available`, `away`, `beRightBack`, `busy`, `doNotDisturb`, `offline`, `outOfOffice`, `presenceUnknown`. |
| availability        | String             | The base presence information for a user. Possible values are `available`, `away`, `beRightBack`, `busy`, `doNotDisturb`, `focusing`, `inACall`, `inAMeeting`, `offline`, `presenting`, `presenceUnknown`.    |
| id                  | String             | The unique identifier for the user. |
| outOfOfficeSettings | [outOfOfficeSettings](outofofficesettings.md) | The out of office settings for a user.  |
| sequenceNumber      | String             | The lexicographically sortable String stamp that represents the version of a **presence** object. |
| statusMessage       | [presenceStatusMessage](presencestatusmessage.md) | The presence status message of a user. |

> [!NOTE]
> * To learn more about the different presence states, see [User presence in Teams](/microsoftteams/presence-admins). 
> * For more details about presence sessions, states permutations, timeouts, and trusted domains, see [Manage presence state using the Microsoft Graph API](/graph/cloud-communications-manage-presence-state).

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.presence"
}-->
```json
{
   "activity": "String",
   "availability":"String",
   "id": "String (identifier)",
   "outOfOfficeSettings": {"@odata.type": "#microsoft.graph.outOfOfficeSettings"},
   "sequenceNumber": "String",
   "statusMessage": {"@odata.type": "#microsoft.graph.presenceStatusMessage"}
}
```
