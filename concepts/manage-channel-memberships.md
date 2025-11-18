---
title: "Managing channel memberships"
description: "Learn how to use the allMembers API in Microsoft Graph to manage and monitor channel memberships across Teams channels."
ms.localizationpriority: medium
ms.subservice: "teams"
ms.topic: concept-article
ms.date: 10/28/2025
---

# Managing channel memberships

The [allMembers](TODO) API in Microsoft Graph provides a unified way to retrieve and manage channel memberships across *standard*, *shared*, and *private* channels in Microsoft Teams. It ensures accurate representation of both *direct* and *indirect* members, helping developers build solutions that respect permissions and membership hierarchies.

For an overview of Microsoft Teams APIs, see [Microsoft Graph overview for Teams](/graph/teams-concept-overview).

## Key capabilities

The following key capabilities highlight the functionality provided by this API:

- Retrieve all members of a channel, including direct and indirect memberships.
- Identify membership origin using annotation properties.
- Support scenarios for shared channels and multi-team access.
- Enable notifications for membership changes.

## Working with the allMembers API

The **allMembers** API returns a comprehensive list of members for a given channel that includes:

- **Direct members**: Users explicitly added to the channel.
- **Indirect members**: Users who gain access through teams that share the channel.

### Important properties

- **@microsoft.graph.originalSourceMembershipUrl**  
  Indicates the source of a user’s membership:
  - Points to channel membership for direct members.
  - Points to team membership for indirect members.

Use the [sharedWithChannelTeamInfo](/graph/api/resources/sharedwithchannelteaminfo) resource and [List allowedMembers](/graph/api/sharedwithchannelteaminfo-list-allowedmembers) API to determine which teams grant access and which members are eligible.

### Behavior in specific scenarios

Shared channels introduce multiple membership paths. For example, if a channel is shared with team *A* and team *B*, and a user is also a direct member, the user appears three times: once as a direct member, once via team *A*, and once via team *B*.

> [!IMPORTANT]
> Don't assume one row per user. Always check the **originalSourceMembershipUrl** property to determine the membership type.

## Notifications and change tracking

You can subscribe to membership changes using the Microsoft Graph change notifications API.

| Scenario | Endpoint |
|:---|:---|
| Private channel membership changes | `/teams/{team-id}/channels/getAllMembers` |
| Shared channel membership changes | `/teams/{team-id}/channels/getAllMembers?notifyOnIndirectMembershipUpdate=true&suppressNotificationWhenSharedUnsharedWithTeam=true` |

> [!IMPORTANT]
> When a channel is shared or unshared, refresh the [allMembers](TODO) API and use the [sharedWithTeams](TODO) and [List allowedMembers](/graph/api/sharedwithchannelteaminfo-list-allowedmembers) APIs for efficient updates.

For more information, see [Get change notifications for channel membership](/graph/teams-changenotifications-channelmembership).

## Related APIs and integration

- [List allMembers in a channel](/graph/api/channel-list-allmembers)
- [List members of a team](/graph/api/team-list-members)
- [Shared channels in Teams](/microsoftteams/platform/concepts/build-and-test/shared-channels)

## Related content

- [Microsoft Graph overview for Teams](/graph/teams-concept-overview)
- [Set up notifications for changes in resource data](change-notifications-overview.md).
