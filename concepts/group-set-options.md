---
title: "Set Microsoft 365 group behaviors and provisioning options"
description: "Use the group resource in Microsoft Graph to set specific group behaviors and resources to provision when creating a Microsoft 365 group."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: jodah
ms.localizationpriority: high
ms.date: 08/13/2022
---

# Set Microsoft 365 group behaviors and provisioning options

Using the [group](/graph/api/resources/group) resource in Microsoft Graph, you can set specific group behaviors and resources to provision when creating a Microsoft 365 group. Depending on the resource, some can also be provisioned on group update.

The **group** resource exposes two properties, **resourceBehaviorOptions** and **resourceProvisioningOptions**, to customize the behaviors and resources to be provisioned upon group creation.

## Configure groups

**resourceBehaviorOptions** is a string collection that specifies group behaviors for a Microsoft 365 group. These behaviors can be set only on [group creation](/graph/api/group-post-groups) (`POST`).

| Supported values for resourceBehaviorOptions | Description                                                  | Default if not set                                                |
| :------------------------------------------- | :----------------------------------------------------------- | :---------------------------------------------------------------- |
| AllowOnlyMembersToPost                       | Only group _members_ can post conversations to the group.    | Any user in the organization can post conversations to the group. |
| CalendarMemberReadOnly                       | Members can view the group calendar in Outlook but cannot make changes.   | Members can view and edit the group calendar in Outlook.|
| ConnectorsDisabled                          | Changes made to the group in Exchange Online are not synced back to on-premises Active Directory.  | Changes made to the group in Exchange Online are synced back to on-premises Active Directory.  |
| HideGroupInOutlook                           | This group is hidden in Outlook experiences.                 | All groups are visible and discoverable in Outlook experiences.   |
| SubscribeMembersToCalendarEventsDisabled     | Members are not subscribed to the group's calendar events in Outlook.     | Members are not subscribed to the group's calendar events. |
| SubscribeNewGroupMembers                     | Group members are subscribed to receive group conversations. | Group members do not receive group conversations.                 |
| WelcomeEmailDisabled                         | Welcome emails are not sent to new members.                  | A welcome email is sent to a new member on joining the group.     |
## Provision groups

**resourceProvisioningOptions** is a string collection that specifies group resources to be provisioned as part of the Microsoft 365 group. These resources can be specified during group creation or update.

| Supported values for resourceProvisioningOptions | Description                                              | Default if not set                                                |
| :----------------------------------------------- | :------------------------------------------------------- | :---------------------------------------------------------------- |
| Team                                             | Provision this group as a team in Microsoft Teams. Additionally, this value can also be added on [group update](/graph/api/group-update) through a `PATCH` operation, in order to provision a team from an existing Microsoft 365 group. | The group is a regular Microsoft 365 group without Teams capabilities. |

## See also

- [Overview of Microsoft 365 groups in Microsoft Graph](microsoft365-groups-concept-overview.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
