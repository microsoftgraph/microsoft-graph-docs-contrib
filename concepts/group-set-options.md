---
title: "Microsoft 365 group behaviors and provisioning options"
description: "Learn how to configure behaviors and resources when creating a Microsoft 365 group using the Microsoft Graph groups API."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: yuhko, khotzteam, aadgroupssg
ms.topic: concept-article
ms.subservice: entra-groups
ms.localizationpriority: high
ms.date: 03/07/2025
#Customer intent: As a developer, I want to learn what group behaviors and resources can be provisioned or configured for Microsoft 365 groups.
---

# Microsoft 365 Group behaviors and provisioning options

On the [group](/graph/api/resources/group) resource in Microsoft Graph, you can use the **resourceBehaviorOptions** property to set specific group behaviors when creating a Microsoft 365 group. The **resourceProvisioningOptions** property on the other hand indicates the specific resources provisioned for the group.

## Resource behavior options

**resourceBehaviorOptions** is a string collection that specifies group behaviors for a Microsoft 365 group. These behaviors can be set only on [group creation](/graph/api/group-post-groups).

| Supported values for resourceBehaviorOptions | Description                                                                                                                                                                                   |
|:---------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `AllowOnlyMembersToPost`                     | Only group _members_ can post conversations to the group; otherwise, any user in the organization can post conversations to the group.                                                        |
| `CalendarMemberReadOnly`                     | Members can view the group calendar in Outlook but can't make changes; otherwise, members can both view and edit the group calendar in Outlook.                                               |
| `ConnectorsDisabled`                         | Changes made to the group in Exchange Online aren't synced back to on-premises Active Directory.                                                                                              |
| `HideGroupInOutlook`                         | This group is hidden in Outlook experiences; otherwise, the group is visible and discoverable in Outlook experiences.                                                                         |
| `SubscribeMembersToCalendarEventsDisabled`   | Members aren't subscribed to the group's calendar events in Outlook.                                                                                                                          |
| `SubscribeNewGroupMembers`                   | Group members are subscribed to receive group conversations.                                                                                                                                  |
| `WelcomeEmailDisabled`                       | Welcome emails aren't sent to new members.                                                                                                                                                    |
| `SkipExchangeInstantOn`                      | For internal use only. DO NOT USE.                                                                                                                                                            |
| `ProvisionSiteOnDemand`                      | By default, a SharePoint site is automatically provisioned when a Microsoft 365 group is created. Use this option to override the default behavior so that the site is provisioned on demand. |

## Resource provisioning options

**resourceProvisioningOptions** is a string collection that specifies the resources associated with the Microsoft 365 group.

> [!CAUTION]
> Avoid configuring the **resourceProvisioningOptions** property during group creation or update. Let the system manage the property.

| Supported values for resourceProvisioningOptions | Description |
|:-|:-|
| `Team` | If set, the Microsoft 365 group is associated with a Teams team. |

## Related content

- [Overview of Microsoft 365 groups in Microsoft Graph](microsoft365-groups-concept-overview.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
