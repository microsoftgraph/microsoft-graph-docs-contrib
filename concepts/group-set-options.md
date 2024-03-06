---
title: "Microsoft 365 group behaviors and provisioning options"
description: "Configure behaviors and resources to provision when creating a Microsoft 365 group using the Microsoft Graph groups API."
author: FaithOmbongi
ms.reviewer: jodah
ms.topic: conceptual
ms.localizationpriority: high
ms.date: 02/29/2024
#Customer intent: As a developer, I want to learn how to use Microsoft Graph to set specific group behaviors and provision specific resources, so that I can tailor the group's functionality and capabilities to meet the needs of my organization.
---

# Microsoft 365 group behaviors and provisioning options

On the [group](/graph/api/resources/group) resource in Microsoft Graph, you can set specific group behaviors and resources to provision when creating a Microsoft 365 group. Depending on the resource, some can also be provisioned when updating a group.

The **group** resource exposes two properties, **resourceBehaviorOptions** and **resourceProvisioningOptions**, to customize the behaviors and resources to be provisioned upon group creation.

## Configure group behavior options

**resourceBehaviorOptions** is a string collection that specifies group behaviors for a Microsoft 365 group. These behaviors can be set only on [group creation](/graph/api/group-post-groups).

| Supported values for resourceBehaviorOptions | Description                                                                                                                                     |
|:---------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------|
| `AllowOnlyMembersToPost`                     | Only group _members_ can post conversations to the group; otherwise, any user in the organization can post conversations to the group.          |
| `CalendarMemberReadOnly`                     | Members can view the group calendar in Outlook but can't make changes; otherwise, members can both view and edit the group calendar in Outlook. |
| `ConnectorsDisabled`                         | Changes made to the group in Exchange Online aren't synced back to on-premises Active Directory.                                                |
| `HideGroupInOutlook`                         | This group is hidden in Outlook experiences; otherwise, the group is visible and discoverable in Outlook experiences.                           |
| `SubscribeMembersToCalendarEventsDisabled`   | Members aren't subscribed to the group's calendar events in Outlook.                                                                            |
| `SubscribeNewGroupMembers`                   | Group members are subscribed to receive group conversations.                                                                                    |
| `WelcomeEmailDisabled`                       | Welcome emails aren't sent to new members.                                                                                                      |

## Provision resources for a group

**resourceProvisioningOptions** is a string collection that specifies the resources that are associated with the Microsoft 365 group. These resources can be specified during group creation or update.

| Supported values for resourceProvisioningOptions | Description |
|:-|:-|
| `Team` | The Microsoft 365 group is or can be associated with a Teams team. If not set, the Microsoft 365 group isn't associated with a team. |

## Related content

- [Overview of Microsoft 365 groups in Microsoft Graph](microsoft365-groups-concept-overview.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
