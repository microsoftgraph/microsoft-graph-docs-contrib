---
title: "presence resource type"
description: "Contains information about a user's presence, including their availability and user activity."
author: "awang119"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "cloud-communications"
---

# presence resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a user's presence, including their availability and user activity.

> **Note:** This resource is currently only supported for Microsoft Teams users.

This resource supports subscribing to [change notifications](/graph/webhooks).

## Methods

| Method                                                                               | Return Type                                     | Description                                                                       |
| :----------------------------------------------------------------------------------- | :---------------------------------------------- | :-------------------------------------------------------------------------------- |
| [Get presence](../api/presence-get.md)                                               | [presence](../resources/presence.md)            | Get a user's presence information.                                                |
| [Get presence of multiple users](../api/cloudcommunications-getpresencesbyuserid.md) | [presence](../resources/presence.md) collection | Get the presence information for multiple users.                                  |
| [Set presence](../api/presence-setpresence.md)                                       |                                                 | Set the availability and activity status in a [presence session](../api/presence-setpresence.md#presence-sessions) of an application for a user. |
| [Clear presence](../api/presence-clearpresence.md)                                   |                                                 | Clear a presence session of an application for a user.                                       |
| [Set user preferred presence](../api/presence-setuserpreferredpresence.md)           |                                                 | Set the preferred availability and activity status for a user.                    |
| [Clear user preferred presence](../api/presence-clearuserpreferredpresence.md)       |                                                 | Clear the preferred availability and activity status for a user.                  |
| [Set user status message](../api/presence-setstatusmessage.md) | | Set a presence status message for a user. |

## Properties

| Property        | Type                                          | Description                                                                                                                                                                                                                                                                                    |
| :------------------ | :-------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id                  | string                                        | The user object id                                                                                                                                                                                                                                                                             |
| availability        | string collection                             | The base presence information for a user. Possible values are `Available`, `AvailableIdle`,  `Away`, `BeRightBack`, `Busy`, `BusyIdle`, `DoNotDisturb`, `Offline`, `PresenceUnknown`                                                                                                           |
| activity            | string collection                             | The supplemental information to a user's availability. Possible values are `Available`, `Away`, `BeRightBack`, `Busy`, `DoNotDisturb`, `InACall`, `InAConferenceCall`, `Inactive`,`InAMeeting`, `Offline`, `OffWork`,`OutOfOffice`, `PresenceUnknown`,`Presenting`, `UrgentInterruptionsOnly`. |
| outOfOfficeSettings | [outOfOfficeSettings](outOfOfficeSettings.md) | The out of office settings for a user.                                                                                                                                                                                                                                                     |
| statusMessage | [microsoft.graph.presenceStatusMessage](presencestatusmessage.md) | The presence status message of a user. |

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
   "id":"string",
   "availability":"string",
   "activity":"string",
   "outOfOfficeSettings":{"@odata.type": "#microsoft.graph.outOfOfficeSettings"},
   "statusMessage":{"@odata.type": "#microsoft.graph.presenceStatusMessage"}
}
```
