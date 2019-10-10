---
title: "Working with the Communications API in Microsoft Graph"
description: "The Microsoft Graph Communications API adds a new dimension to how your apps and services can interact with users by enabling voice and video features. This API enables applications to be a part of 1-1 or Group Calls, create and retreive Online meetings and integration User presence in business workflows"
author: "VinodRavichandran"
doc_type: conceptualPageType
localization_priority: Priority
---

# Working with the Communications API in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph Communications APIs adds a new dimension to how you or your organization can interact with other users by enabling core communication capabilities and features in your apps and services. These APIs enables you to create and receive calls, create and retrieve meeting coordinates and check User’s Presence.
You can use these APIs to build service applications (Bots), that acts like participants in a call, that create and retrieve meetings on behalf of Users <!-- and to check presence availability and activity of users. -->
These APIs provide calling functionality as well as the ability to create and retrieve online meetings. You can use service applications (bots) with these APIs, where the bot can act as a participant in your VoIP calls or Teams meetings, for example.

## Authorization

One of the following [permissions](https://docs.microsoft.com/en-us/graph/permissions-reference#calls-permissions) is required to access Communication APIs. These permissions need to be granted by the administrator

| Type of Permission                  | Permissions                                  |
|:------------------------------------|:---------------------------------------------|
| Calling Permissions                 | Calls.JoinGroupCallsasGuest.All, Calls.JoinGroupCalls.All, Calls.Initiate.All, Calls.InitiateGroupCalls.All, Calls.AccessMedia.All |
| Meetings Permissions                | OnlineMeetings.ReadWrite.All, OnlineMeetings.Read.All |

## Common Use Cases

The following table lists some of the common operations in the Communications APIs

| Use cases                         | REST resources                                 | See also  |
|:------------------------------------|:---------------------------------------------|:----------|
| Creating and joining 1-1 and Group calls   | [Call](https://docs.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-beta)| [Methods for Calls](https://docs.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-beta#methods)| 
|IVR calls   |     | [Methods for IVR](https://docs.microsoft.com/en-us/graph/api/resources/calls-api-ivr-overview?view=graph-rest-beta)
| Call controls (participant) | [Participant](https://docs.microsoft.com/en-us/graph/api/resources/participant?view=graph-rest-beta)   ||
|Meetings|[onlineMeeting](https://docs.microsoft.com/en-us/graph/api/resources/onlinemeeting?view=graph-rest-beta)| [Methods for Meetings](https://docs.microsoft.com/en-us/graph/api/resources/onlinemeeting?view=graph-rest-beta#methods)|

## Common Properties

| Types of properties                 | REST resources                             |
|:------------------------------------|:---------------------------------------------|
| Calls                               | [Call property](https://docs.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-beta#properties)  |
| Participant                         | [Participant property](https://docs.microsoft.com/en-us/graph/api/resources/participant?view=graph-rest-beta#properties) |
| Meetings                            | [Meeting property](https://docs.microsoft.com/en-us/graph/api/resources/onlinemeeting?view=graph-rest-beta#properties)                     |

## See also

Learn about Communications APIs

[Communication API samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/)

[Communication Signaling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls/1.0.0-prerelease.494)

[Communication Media SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls.Media/1.0.0-prerelease.494)

[Known issues](../../../concepts/known_issues.md#Calls-and-online-meetings)