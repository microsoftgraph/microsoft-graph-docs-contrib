
---
title: "Manage channel membership across channels with allMembers API in Microsoft Graph"
description: "Learn how to use the allMembers API in Microsoft Graph to manage and monitor channel memberships across Teams channels."
ms.localizationpriority: medium
ms.subservice: "teams"
ms.topic: concept-article
ms.date: 10/28/2025
---

# Manage channel membership across channels with allMembers API in Microsoft Graph

The `allMembers` API in Microsoft Graph provides a unified way to retrieve and manage channel memberships across **standard**, **shared**, and **private channels** in Microsoft Teams. It ensures accurate representation of both **direct** and **indirect** members, helping developers build solutions that respect permissions and membership hierarchies.

For an overview of Microsoft Teams APIs, see [Microsoft Teams in Microsoft Graph](/graph/teams-concept-overview).

---

## Key capabilities

- Retrieve all members of a channel, including direct and indirect memberships.
- Identify membership origin using annotation properties.
- Support for shared channels and cross-team membership scenarios.
- Enable notifications for membership changes.

---

## How it works

The `allMembers` API returns a comprehensive list of members for a given channel. This includes:

- **Direct members**: Users explicitly added to the channel.
- **Indirect members**: Users who gain access through teams that share the channel.

### Important properties
- **`@microsoft.graph.originalSourceMembershipUrl`**  
  Indicates the source of a user’s membership:
  - Points to channel membership for direct members.
  - Points to team membership for indirect members.

Use the [sharedWithChannelTeamInfo resource type](/graph/api/resources/sharedwithchannelteaminfo) and [allowedMembers API](/graph/api/sharedwithchannelteaminfo-list-allowedmembers) to determine which teams grant access to shared channels.

---

### Behavior in specific scenarios

Shared channels introduce multiple membership paths. For example:

- If a channel is shared with Team A and Team B, and a user is also a direct member:
  - The user appears **three times**: once as a direct member, and once for each team.

> [!IMPORTANT]
> Do not assume one row per user. Always check `originalSourceMembershipUrl` to determine membership type.

---

## Notifications and change tracking

You can subscribe to membership changes using Microsoft Graph change notifications. For example:

| **Scenario** | **Endpoint** |
|--------------|--------------|
| Private channel membership changes | `/teams/{team-id}/channels/getAllMembers` |
| Shared channel membership changes | `/teams/{team-id}/channels/getAllMembers?notifyOnIndirectMembershipUpdate=true&suppressNotificationWhenSharedUnsharedWithTeam=true` |

> [!IMPORTANT]
> When a channel is shared or unshared, refresh the `allMembers` API and use `sharedWithTeams` and `allowedMembers` APIs for large updates.

Learn more: [Get change notifications for membership changes in channels using Microsoft Graph](teams-changenotifications-channelmembership.md).

---

## Related APIs and integration

- [List allMembers](/graph/api/channel-list-allmembers)
- [List team members](/graph/api/team-list-members)
- [Shared channels overview](/microsoftteams/platform/concepts/build-and-test/shared-channels)

---

## Related content

- [Microsoft Teams in Microsoft Graph](/graph/teams-concept-overview)
- [Change notifications in Microsoft Graph](/graph/webhooks)
