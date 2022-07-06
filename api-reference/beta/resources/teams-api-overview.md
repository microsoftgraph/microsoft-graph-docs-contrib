---
title: "Use the Microsoft Graph API to work with Microsoft Teams"
description: "Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more."
ms.localizationpriority: high
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Microsoft Teams

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, Shifts schedules, and more. Using Microsoft graph:

- Create and manage Teams, Groups and Channels.
- Add Tabs, manage or install apps in the Microsoft Teams app catalog.
- Create channels and chats to send and receive chat messages.
- Use Tags to classify users or groups bases on common attributes whitin a team. 
- Create and receive calls, call records or retrieve meeting coordinates.
- Connect bots to calls and implement interactive voice response (IVR).
- Create and retrieve online meetings or check users presence and activity.
- Create and manage Workforce integration with shifts, schedules, time cards or time off in your organization. 

## Key resources in Microsoft Teams

| Resource | REST resources | See also |
:-----------|:--------|:--------|
|team| [list your teams](../api/user-list-joinedteams.md), [list all teams](/graph/teams-list-all-teams), [create](../api/team-put-teams.md), [read](../api/team-get.md), [update](../api/team-update.md), [delete](../api/group-delete.md) | [team](../resources/team.md) |
|channel| [list](../api/channel-list.md), [create](../api/channel-post.md), [read](../api/channel-get.md), [delete](../api/channel-delete.md) | [channel](../resources/channel.md) |
|teamsTab| [list](../api/channel-list-tabs.md), [create](../api/channel-post-tabs.md), [read](../api/channel-get-tabs.md), [delete](../api/channel-delete-tabs.md) | [teamsTab](../resources/teamstab.md) |
|teamsApp| [list](../api/appcatalogs-list-teamsapps.md), [publish](../api/teamsapp-publish.md), [update](../api/teamsapp-update.md), [remove](../api/teamsapp-delete.md)|[teamsApp](../resources/teamsapp.md) |
|teamsAppInstallation| [list](../api/team-list-installedapps.md), [install](../api/team-post-installedapps.md), [upgrade](../api/team-delete-installedapps.md), [remove](../api/team-delete-installedapps.md) | [teamsappinstallation](../resources/teamsappinstallation.md) |
|chatMessage| [list in channel](../api/channel-list-messages.md), [list in chat](../api/chat-list-messages.md), [send](../api/chatmessage-post.md), [read in channel](../api/chatmessage-get.md), [read in chat](../api/chatmessage-get.md) | [chatMessage](../resources/chatmessage.md) |
|chat|[list](../api/chat-list.md), [read](../api/chat-get.md), [list chat members](../api/chat-list-members.md)| [chat](../resources/chat.md) | 
|call| [answer](../api/call-answer.md), [reject](../api/call-reject.md), [mute](../api/call-mute.md), [change screen sharing role](../api/call-changescreensharingrole.md), [invite participants](../api/participant-invite.md) | [call](../resources/call.md), [call records](../resources/callrecords-api-overview.md) |
|online meetings|[attendance report](../resources/meetingattendancereport.md), [meeting registration](../resources/meetingregistration.md), [external meeting registration](../resources/externalmeetingregistration.md) | [online meetings](../resources/onlinemeeting.md), [presence](../resources/presence.md) |
|tag| [list](../api/teamworkTag-list.md), [create](../api/teamworkTag-post.md), [get](../api/teamworkTag-get.md), [delete](../api/teamworkTag-delete.md) | [tag](../resources/teamworkTag.md) |
|tagMember| [list](../api/teamworkTagMember-list.md), [create](../api/teamworkTagMember-post.md), [get](../api/teamworkTagMember-get.md), [delete](../api/teamworkTagMember-delete.md) | [tagMember](../resources/teamworkTagMember.md) |
|schedule| [create or replace](../api/team-put-schedule.md), [get](../api/schedule-get.md), [share](../api/schedule-share.md) | [schedule](../resources/schedule.md) |
|schedulingGroup| [create](../api/schedule-post-schedulinggroups.md), [list](../api/schedule-list-schedulinggroups.md), [get](../api/schedulinggroup-get.md), [delete](../api/schedulinggroup-delete.md) | [schedulingGroup](../resources/schedulinggroup.md) |
|shift| [create](../api/schedule-post-shifts.md), [list](../api/schedule-list-shifts.md), [get](../api/shift-get.md), [delete](../api/shift-delete.md) | [shift](../resources/shift.md) |
|timeOff| [create](../api/schedule-post-timesoff.md), [list](../api/schedule-list-timesoff.md), [get](../api/timeoff-get.md), [replace](../api/timeoff-put.md), [delete](../api/timeoff-delete.md) | [timeOff](../resources/timeoff.md) |
|timeOffReason| [create](../api/schedule-post-timeoffreasons.md), [list](../api/schedule-list-timeoffreasons.md), [get](../api/timeoffreason-get.md), [delete](../api/timeoffreason-delete.md) | [timeOffReason](../resources/timeoffreason.md) |


## Microsoft Teams limits

The tested performance and capacity limits of Microsoft Teams are documented in
[Limits and specifications for Microsoft Teams](/microsoftteams/limits-specifications-teams).
These limits apply whether using Microsoft Teams directly or using Microsoft Graph APIs.
Because every team has a corresponding group, and every group is a directory object,
limits on the [number of groups](/microsoft-365/admin/create-groups/office-365-groups#group-limits)
and the [number of directory objects ("resources")](/azure/active-directory/users-groups-roles/directory-service-limits-restrictions)
can also come into play.

Files inside channels are stored in SharePoint; [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits) apply.

See also [throttling limits for Microsoft Teams services](/graph/throttling#microsoft-teams-service-limits).

## Teams and groups

In Microsoft Graph, Microsoft Teams is represented by a [group](../resources/group.md) resource. Both Microsoft Teams and Microsoft 365 groups address the various needs of group collaboration. Almost all the group-based features apply to Microsoft Teams and Microsoft 365 groups, such as group calendar, files, notes, photo, plans, and so on. The main difference between a [team](team.md) and a Microsoft 365 group is the mode of communication between members. Team members communicate by persistent chat in the context of a specific team. Microsoft 365 group members communicate by group conversations, which are email conversations that occur in the context of a group in Outlook.

Any group that has a team has a **resourceProvisioningOptions** property that contains "Team".

>**Note:** The **Group.resourceProvisioningOptions** property can be changed.
Do not add or remove "Team" from that collection;
otherwise, you'll get incorrect results when you list all teams.

The following are the differences at the API level between teams and groups:

- Persistent chat is available only to Microsoft Teams. This feature is hierarchically represented by the [channel](../resources/channel.md) and [chatMessage](../resources/chatmessage.md) resources.
- Group conversations are available only to Microsoft 365 groups. This feature is hierarchically represented by the [conversation](../resources/conversation.md), [conversationThread](../resources/conversationthread.md), and [post](../resources/post.md) resources.
- The [List joined teams](../api/user-list-joinedteams.md) method applies only to Microsoft Teams.
- [Calling](../resources/call.md) and [online meeting](../resources/onlinemeeting.md) APIs apply only to Microsoft Teams.
- See also the [known issues](/graph/known-issues) for these APIs.

>**Note:** If you use the groups API in a [Microsoft Teams app](/microsoftteams/platform/#apps-in-microsoft-teams) rather than in a standalone app - for example as part of a tab or bot running in Microsoft Teams - follow the guidance in the article [Using Microsoft Graph in your Microsoft Teams pages](/microsoftteams/platform/resources/microsoft-graph).

## Membership changes in Microsoft Teams

| Use case      | Verb      | URL |
| ------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Add member](../api/team-post-members.md)	| POST	    | /teams/{team-id}/members  |
| [Remove member](../api/team-delete-members.md)	| DELETE	| /teams/{team-id}/members/{membership-id} |
| [Update member's role](../api/team-update-members.md)	| PATCH	| /teams/{team-id}/members/{membership-id} |
| [Update team](../api/team-update.md)	| PATCH     | /teams/{team-id} |

## Polling requirements

If your app polls to see whether a resource has changed, you can only do that once per day.
([teamsAsyncOperation](teamsasyncoperation.md) is an exception in that it's intended to be polled frequently.)
If you need to hear about changes more frequently than that, you should [create a subscription](../api/subscription-post-subscriptions.md) to that resource and receive change notifications (webhooks).
If you don't find support for the type of subscription you need, we encourage you to provide feedback via the [Microsoft 365 Developer Platform ideas forum](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).

When polling for new messages, you must specify a date range where supported. For details, see [get channel messages delta](../api/chatmessage-delta.md).

Polling is doing a GET operation on a resource over and over again to see if that resource has changed.
You're allowed to GET the same resource multiple times a day, as long as it's not polling.
For example, it is okay to GET /me/joinedTeams every time the user visits/refreshes your web page,
but it is not okay to GET /me/joinedTeams in a loop every 30 seconds to refresh that web page.

Apps that don't follow these polling requirements will be considered in violation of the
[Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use). This may result in additional [throttling](/graph/throttling)
or the suspension or termination of your use of the Microsoft APIs.

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## See also

- [Microsoft Teams API overview](/graph/teams-concept-overview)
- Sample code: [Contoso Airlines](https://github.com/microsoftgraph/contoso-airlines-teams-sample), [C# mini-samples](https://github.com/microsoftgraph/csharp-teams-sample-graph)
