---
title: "presence resource type"
description: "Contains information about a user's presence, including their availability and user activity."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
---

# presence resource type

Namespace: microsoft.graph

Contains information about a user's presence, including their availability and user activity.

> **Note:** This resource is currently only supported for Microsoft Teams users.

This resource supports subscribing to [change notifications](/graph/changenotifications-for-presence).

## Methods

| Method                                                                               | Return Type                                     | Description                                         |
| :----------------------------------------------------------------------------------- | :---------------------------------------------- | :-------------------------------------------------- |
| [Get presence](../api/presence-get.md)                                               | [presence](../resources/presence.md)            | Get a user's presence information.                  |
| [Get presence of multiple users](../api/cloudcommunications-getpresencesbyuserid.md) | [presence](../resources/presence.md) collection | Get the presence information for multiple users.    |
| [Set presence](../api/presence-setpresence.md)                                       |                                                 | Set an application's presence session for a user.   |
| [Clear presence](../api/presence-clearpresence.md)                                   |                                                 | Clear an application's presence session for a user. |
| [Set user preferred presence](../api/presence-setuserpreferredpresence.md)           |                                                 | Set the preferred availability and activity status for a user.                    |
| [Clear user preferred presence](../api/presence-clearuserpreferredpresence.md)       |                                                 | Clear the preferred availability and activity status for a user.                  |
| [Set user status message](../api/presence-setstatusmessage.md)                       |                                                 | Set a presence status message for a user. |

## Properties

| Property | Type              | Description                                                                                                                                                                                                                                                                                       |
| :----------- | :---------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| activity     | String collection | The supplemental information to a user's availability. Possible values are `Available`, `Away`, `BeRightBack`, `Busy`, `DoNotDisturb`, `InACall`, `InAConferenceCall`, `Inactive`, `InAMeeting`, `Offline`, `OffWork`, `OutOfOffice`, `PresenceUnknown`, `Presenting`, `UrgentInterruptionsOnly`. |
| availability | String collection | The base presence information for a user. Possible values are `Available`, `AvailableIdle`,  `Away`, `BeRightBack`, `Busy`, `BusyIdle`, `DoNotDisturb`, `Offline`, `PresenceUnknown`                                                                                                              |
| id           | String            | The unique identifier for the user.                                                                                                                                                                                                                                                                                |
| statusMessage | [presenceStatusMessage](presencestatusmessage.md) | The presence status message of a user. |

>**Note:** To learn more about the different presence states, see [User presence in Teams](/microsoftteams/presence-admins). 

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
   "statusMessage":{"@odata.type": "#microsoft.graph.presenceStatusMessage"}
}
```
