---
title: "Understand calls"
description: "Learn about the supported call types and how they're used for the signaling process."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Understand calls

Learn about the supported call types and how they're used for the signaling process.

## Peer-to-Peer calls
A call is Peer-to-Peer (p2p) when one participant is directly calling another participant. If a bot calls a user, and the user is the only calling target specified, this is an example of a p2p call.

![P2P Diagram](images/communications-p2p-call.PNG)

### Permissions
If a user wants to call a bot, the bot doesn't need any additional permissions in order to respond to the p2p call.

In order for a bot to call a user, it must have the *Calls.Initiate.All* permission for a p2p call.

## Group calls

A group call occurs if there are either 3 participants (at least) in the call, or if there are [meeting coordinates](/graph/api/resources/onlinemeeting) that are specified when the call was initially created. 

You can create a group call through Microsoft Teams, for example.

![Group Call Diagram](images/communications-group-call.PNG)<br/></br>

Currently, bots are able to
- create group calls on their own
- join exisiting group calls
- invite other participants into an existing group call
- be invited into existing group calls

### Permissions:
Please view the [permissions for calls](/graph/permissions-reference#calls-permissions) for more information.
