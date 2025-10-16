---
title: "Manage channel membership across channels with allMembers API in Microsoft Graph"
description: "Understand the detailed scope of allMembers API and its benefits."
author: "surbhigupta"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: conceptType
ms.date: 09/18/2025
---

# Manage channel memberships

Namespace: microsoft.graph

Use the new `allMembers` API that manages and monitors channel memberships across standard, shared, and private channels. It enhances accuracy by reflecting direct and indirect members correctly. Get the list of all [members](../api-reference/v1.0/api/channel-list-members.md) in a [channel](../api-reference/v1.0/resources/channel.md)

## Connect users to channels with the annotation property

The new `@microsoft.graph.originalSourceMembershipUrl` property determines how a user is connected to a channel and manages permissions accordingly. It identifies the original source team and indicates whether the user is an indirect or direct member of the shared channel:

* Direct members: The originalSourceMembershipUrl points to channel membership.
* Indirect members: The originalSourceMembershipUrl points to team membership.

Use the [sharedWithChannelTeamInfo resource type](../api-reference/v1.0/resources/sharedwithchannelteaminfo.md) API to identify which teams grant access to shared channels and
[List allowedMembers](../api-reference/v1.0/api/sharedwithchannelteaminfo-list-allowedmembers.md) API to specify eligible members.

## Understand membership behavior for shared channels

You can view all membership instances in a shared channel via the `allMembers` API, which returns the following two membership paths for a user:

* Direct members in the channel
* Indirect members via each team the channel is shared with

### Example

If a user is a direct member of a shared channel and the channel is shared with Team A and Team B, then the user appears three times:

* once as a direct member
* once via Team A
* once via Team B

Use the `originalSourceMembershipUrl` annotation property to determine whether the member's entry is direct or associated with a specific team.

>[!IMPORTANT]
> Don’t assume one row per user. A single user can appear multiple times when a channel is shared with multiple teams.

See [List allMembers](../api-reference/v1.0/api/channel-list-allmembers.md) to learn more on the permissions, HTTP request parameters, and supporting examples.

## Set up notifications for channel membership changes

Create a subscription on /teams/{team-id}/channels/getAllMembers to set up a notification for changes in channel membership, such as users joining or leaving a particular channel. For more information on channel membership notifications, see [Get change notifications for membership changes in channels using Microsoft Graph](teams-changenotifications-channelmembership.md).

The subscription endpoints for retrieving channel members, based on channel type and membership scope are tabulated as follows:

|**Channel Type** |**Membership Scope**  |**Subscribe To**  |
|---------|---------|---------|
|Private Channels  | Direct membership only  | /teams/{team-id}/channels/getallMembers  |
|Shared Channels | Direct and Indirect membership | /teams/{team-id}/channels/getallMembers?notifyOnIndirectMembershipUpdate=true&suppressNotificationWhenSharedUnsharedWithTeam=true |

> [!IMPORTANT]
> When you receive a membership share or unshare notification, refresh the `allMembers` API for shared channels. To handle large indirect membership changes efficiently, call the `sharedWithTeams` and `allowedMembers` APIs.

## Related content

[List the members of a team](../api-reference/v1.0/api/team-list-members.md)
[Teams connects Shared Channels](/microsoftteams/platform/concepts/build-and-test/shared-channels)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "channel member list",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->