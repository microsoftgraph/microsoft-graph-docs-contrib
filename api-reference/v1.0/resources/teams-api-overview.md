---
title: "Use the Microsoft Graph API to work with Microsoft Teams"
description: "Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, and more."
ms.localizationpriority: high
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to work with Microsoft Teams

Microsoft Teams is a chat-based workspace in Microsoft 365 that provides built-in access to team-specific calendars, files, OneNote notes, Planner plans, Shifts schedules, and more.

## Common use cases

| Use cases | REST resources | See also |
:-----------------|:----------|:--------|
| Create and manage teams, groups and channels | [team](../resources/team.md), [channel](../resources/channel.md), [group](../resources/group.md) | [create team](../api/team-put-teams.md), [list teams](../api/user-list-joinedteams.md), [create channel](../api/channel-post.md) |
| Add tabs, manage or install apps in the Microsoft Teams app catalog | [teamsTab](../resources/teamstab.md), [teamsAppInstallation](../resources/teamsappinstallation.md) | [create teamsTab](../api/channel-post-tabs.md), [list teamsTab](../api/channel-list-tabs.md), [list apps](../api/appcatalogs-list-teamsapps.md) |
| Create channels and chats to send and receive chat messages | [channel](../resources/channel.md), [chat](../resources/chat.md), [chatMessage](../resources/chatmessage.md) | [create channel](../api/channel-post.md), [list channel](../api/channel-list.md), [send chatMessage](../api/chatmessage-post.md) |
| Use tags to classify users or groups based on common attributes within a team | [teamworkTag](../resources/teamworktag.md), [teamworkTagMember](../resources/teamworktagmember.md) | [list teamworkTag](../api/teamworktag-list.md), [create teamworkTag](../api/teamworktag-post.md) |
| Create and receive calls, call records or retrieve meeting coordinates | [call](../resources/call.md), [callRecords](../resources/callrecords-api-overview.md) |  [answer](../api/call-answer.md), [invite participants](../api/participant-invite.md) |
| Connect bots to calls and implement interactive voice response (IVR) | [IVR scenarios](../resources/calls-api-ivr-overview.md) |  |
| Create and retrieve online meetings or check users presence and activity | [onlineMeetings](../resources/onlinemeeting.md), [presence](../resources/presence.md) | [create onlineMeetings](../api/application-post-onlinemeetings.md), [meetingAttendanceReport](../resources/meetingattendancereport.md)
| Create and manage workforce integration with shifts, schedules, time cards or time off in your organization | [workforceIntegration](../resources/workforceintegration.md), [schedule](../resources/schedule.md), [shift](../resources/shift.md), [timeOff](../resources/timeoff.md), [timeOffReason](../resources/timeoffreason.md) | [create workforceIntegration](../api/workforceintegration-post.md), [create schedule](../api/schedule-post-schedulinggroups.md), [create shift](../api/schedule-post-shifts.md), [create timeOff](../api/schedule-post-timesoff.md) |
| Use the employee learning API to integrate with Viva Learning | [employee learning](../resources/viva-learning-api-overview.md), [learningProvider](../resources/learningprovider.md), [learningContent](../resources/learningcontent.md) | [list learningProviders](../api/employeeexperience-list-learningproviders.md), [list learningContents](../api/learningprovider-list-learningcontents.md) |

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
Find out about the [latest new features and updates](/graph/whats-new-overview) for these API sets.

## See also

- [Overview for using Microsoft Teams, Shifts, and Viva Learning to foster teamwork](/graph/teams-concept-overview)
- Sample code: [Contoso Airlines](https://github.com/microsoftgraph/contoso-airlines-teams-sample), [C# mini-samples](https://github.com/microsoftgraph/csharp-teams-sample-graph)
