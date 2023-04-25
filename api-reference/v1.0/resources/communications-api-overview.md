---
title: "Working with the cloud communications API in Microsoft Graph"
description: "The Microsoft Graph cloud communications API adds a new dimension to how your apps and services can interact with users by enabling voice and video features."
author: "ananmishr"
doc_type: conceptualPageType
ms.prod: cloud-communications
ms.localizationpriority: high
---

# Working with the cloud communications API in Microsoft Graph

The Microsoft Graph cloud communications API adds a new dimension to how you or your organization can interact with other users by enabling core communication capabilities and features in your apps and services. You can use this API to create and receive calls as well as create and retrieve meeting coordinates.

You can use the cloud communications API to build service applications (bots) that act like participants in a call, and that create and retrieve meetings on behalf of users.
This API provides calling functionality as well as the ability to create and retrieve online meetings. You can use service applications (bots) with this API, where the bot can act as a participant in your VoIP calls or Microsoft Teams meetings, for example.

## Authorization

One of the following [permissions](/graph/permissions-reference#calls-permissions) is required to access the cloud communications API. These permissions need to be granted by the administrator.

| Scenario     | Permissions                                                                                                                     |
|:-------------|:--------------------------------------------------------------------------------------------------------------------------------|
| Call records | CallRecords.Read.All                                                                                                            |
| Calling      | Calls.JoinGroupCallAsGuest.All, Calls.JoinGroupCall.All, Calls.Initiate.All, Calls.InitiateGroupCall.All, Calls.AccessMedia.All |
| Meetings     | OnlineMeetings.ReadWrite.All, OnlineMeetings.Read.All                                                                           |
| Presences    | Presence.Read, Presence.Read.All                                                                                                |

## Common use cases

The following table lists some of the common uses for the cloud communications API.

| Use cases                         | REST resources                                 | See also  |
|:------------------------------------|:---------------------------------------------|:----------|
| Creating and joining 1-1 and group calls   | [Call](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true)| [Methods for calls](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true#methods)| 
|IVR calls   |     | [Methods for IVR](/graph/api/resources/calls-api-ivr-overview?view=graph-rest-v1.0&preserve-view=true)
| Call controls (participant) | [Participant](/graph/api/resources/participant?view=graph-rest-v1.0&preserve-view=true)   ||
|Meetings|[onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0&preserve-view=true)| [Methods for meetings](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0&preserve-view=true#methods)|
| Retrieving call records | [callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-1.0&preserve-view=true) | [Webhook subscriptions](/graph/api/resources/webhooks?view=graph-rest-1.0&preserve-view=true) |
|Presences|[presence](/graph/api/resources/presence?view=graph-rest-v1.0&preserve-view=true)||

## Common properties

| Resource                | Properties                             |
|:------------------------------------|:---------------------------------------------|
| call                               | [call properties](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true#properties)  |
| participant                         | [participant properties](/graph/api/resources/participant?view=graph-rest-v1.0&preserve-view=true#properties) |
| onlineMeeting                            | [onlineMeeting properties](/graph/api/resources/onlinemeeting?view=graph-rest-v1.0&preserve-view=true#properties)                     |
| callRecord | [callRecord properties](/graph/api/resources/callrecords-callrecord?view=graph-rest-v1.0&preserve-view=true#properties) |
|presence|[presence](/graph/api/resources/presence?view=graph-rest-v1.0&preserve-view=true)|

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## See also

- [Cloud communications API samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/)
- [Communication Signaling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls)
- [Communication Media SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls.Media)
