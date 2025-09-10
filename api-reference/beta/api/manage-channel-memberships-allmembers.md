---
title: "Manage channel membership across channels with allMembers API in Microsoft Graph"
description: "Understand the detailed scope of allMembers API and its benefits."
author: "sumitgupta"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 12/20/2024
---

# Manage channel memberships

Namespace: microsoft.graph

Use the new **allMembers** API that manages and monitors channel memberships across standard, shared, and private channels. Get a list of all [members](../resources/conversationmember.md) in a [channel](../resources/channel.md). The allMembers API:

* Enhances accuracy by reflecting direct and indirect members correctly
* Addresses specific file storage and access requirements for apps integrated into channels
* Supports classical and resource-specific consent (RSC) permissions and notifications for membership changes

## Connect users to channels with the annotation property

The new **@microsoft.graph.originalSourceMembershipUrl** property determines how a user is connected to a channel and manages permissions accordingly. It identifies the original source team and indicates whether the user is an indirect or direct member of the shared channel:

* Direct members: The originalSourceMembershipUrl points to channel membership.
* Indirect members: The originalSourceMembershipUrl points to team membership.

Use the **sharedWithTeams** and **allowedMembers** endpoints to identify which teams grant access to shared channels and to specify eligible members.

## Set up notifications for channel membership changes

Create a subscription on /teams/{team-id}/channels/getAllMembers to set up notification for changes in channel membership, such as users joining or leaving a particular channel.
The subscription endpoints for retrieving channel members, based on channel type and membership scope are tabulated as follows:

|**Channel Type** |**Membership Scope**  |**Subscribe To**  |
|---------|---------|---------|
|Private Channels  | Direct membership only  | /teams/{team-id}/channels/getAllMembers  |
|Shared Channels | Direct and Indirect membership | /teams/{team-id}/channels/getAllMembers?notifyOnIndirectMembershipUpdate=true&suppressNotificationWhenSharedUnsharedWithTeam=true |

> [!IMPORTANT]
> When you receive a membership share or unshare notification, refresh the **allMembers** API for shared channels. To handle large indirect membership changes efficiently, call the **sharedWithTeams** and **allowedMembers** APIs.

## Understand membership behavior for shared channels

You can view all membership instances in a shared channel via the **allMembers** API, which returns the following two membership paths for a user:

* Direct members in the channel
* Indirect members via each team the channel is shared with

### Example

If a user is a direct member of a shared channel and the channel is shared with **Team A** and **Team B**, then **the user appears three times**:

* once as a direct member
* once via Team A
* once via Team B

Use the **originalSourceMembershipUrl** annotation property to determine whether the member's entry is direct or associated with a specific team.

>[!IMPORTANT]
> Don’t assume one row per user. A single user can appear multiple times when a channel is shared with multiple teams.

See [List members of channel](channel-list-members.md) to learn more on the permissions, HTTP request parameters, and supporting examples.

## Related content

[List the members of a team](team-list-members.md).

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
