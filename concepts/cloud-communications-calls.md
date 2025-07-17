---
title: "Supported call types in the cloud communications API"
description: "Learn about the supported call types in the cloud communications API in Microsoft Graph and how they're used for the signaling process."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/07/2024
---

# Supported call types

This article describes the supported call types in the cloud communications API in Microsoft Graph and how they're used for the signaling process.

## Peer-to-peer calls

A call is peer-to-peer (P2P) when one participant is directly calling another participant. If a bot calls a user, and the user is the only calling target specified, this is an example of a P2P call.

![P2P call diagram](images/communications-p2p-call.PNG)

If a user wants to call a bot, the bot doesn't need any additional permissions in order to respond to the P2P call. In order for a bot to call a user, it must have the Calls.Initiate.All permission for a P2P call.

## Group calls

A group call occurs if there are either three or more participants in the call, or if [meeting coordinates](/graph/api/resources/onlinemeeting) were specified when the call was initially created. 

You can create a group call through Microsoft Teams, for example.

![Group call diagram](images/communications-group-call.PNG)

Currently, bots are able to:
- Create group calls
- Join exisiting group calls
- Invite other participants into an existing group call
- Be invited into existing group calls

## Related content

- [Teams API overview](teams-concept-overview.md)
- [Permissions for calls](./permissions-reference.md)
