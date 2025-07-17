---
title: "Working with the cloud communications API in Microsoft Graph"
description: "The Microsoft Graph cloud communications API adds a new dimension to how your apps and services can interact with users by enabling voice and video features."
author: "ananmishr"
doc_type: conceptualPageType
ms.subservice: cloud-communications
ms.localizationpriority: high
ms.date: 06/25/2024
---

# Working with the cloud communications API in Microsoft Graph

The Microsoft Graph cloud communications API adds a new dimension to how you or your organization can interact with other users by enabling core communication capabilities and features in your apps and services. You can use this API to create and receive calls as well as create and retrieve meeting coordinates.

You can use the cloud communications API to build service applications (bots) that act like participants in a call, and that create and retrieve meetings on behalf of users.
This API provides calling functionality as well as the ability to create and retrieve online meetings. You can use service applications (bots) with this API, where the bot can act as a participant in your VoIP calls or Microsoft Teams meetings, for example.

> [!IMPORTANT]
> You may NOT use the Cloud Communications APIs to record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content. Make sure that you are compliant with the laws and regulations in your area regarding data protection and confidentiality of communications. Please see the Terms of Use and consult with your legal counsel for more information.

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
| Creating and joining 1-1 and group calls   | [call](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true)| [Methods for calls](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true#methods)| 
|IVR calls   |  [call](/graph/api/resources/call?view=graph-rest-v1.0&preserve-view=true)   | [Methods for IVR](/graph/api/resources/teams-api-overview#ivr-scenarios?view=graph-rest-v1.0&preserve-view=true)
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

## Related content

- [Cloud communications API samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/)
- [Communication Signaling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls)
- [Communication Media SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls.Media)
