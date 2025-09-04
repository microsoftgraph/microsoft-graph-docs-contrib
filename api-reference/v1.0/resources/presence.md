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

## Trusted domains

**Trusted domains for cross-tenant presence visibility and interaction:** Configure Teams **External access** so only the intended partner organizations can **see and act on presence** for your users. In the Teams admin center (**Users > External access**), allow all domains or add specific domains to the **Allow** list under **“Meetings and chat with trusted Microsoft 365 organizations.”** Users in those trusted organizations will be able to view user presence. Cross-tenant presence requires **mutual trust**—the partner must also allow your domain. Domains that aren’t trusted (or are blocked) won’t see presence or be able to initiate presence-driven interactions. For more details visit [the domain configuration site.](microsoftteams/trusted-organizations-external-meetings-chat?tabs=organization-settings#specify-trusted-microsoft-365-organizations)

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

| Property | Type              | Description                                                                                                                                                                                                                                                                                       |
| :----------- | :---------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| activity     | String collection | The supplemental information to a user's availability. Possible values are `Available`, `Away`, `BeRightBack`, `Busy`, `DoNotDisturb`, `InACall`, `InAConferenceCall`, `Inactive`, `InAMeeting`, `Offline`, `OffWork`, `OutOfOffice`, `PresenceUnknown`, `Presenting`, `UrgentInterruptionsOnly`. |
| availability | String collection | The base presence information for a user. Possible values are `Available`, `availableIdle`,  `Away`, `beRightBack`, `Busy`, `busyIdle`, `DoNotDisturb`, `Offline`, `presenceUnknown`.|
| id           | String            | The unique identifier for the user. |
| outOfOfficeSettings | [outOfOfficeSettings](outofofficesettings.md) | The user's out-of-office settings. |
| sequenceNumber | String | The lexicographically sortable string stamp that represents the version of a **presence** object. |
| statusMessage | [presenceStatusMessage](presencestatusmessage.md) | The presence status message of a user. |

>**Note:** To learn more about the different presence states, see [User presence in Teams](/microsoftteams/presence-admins). 

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
