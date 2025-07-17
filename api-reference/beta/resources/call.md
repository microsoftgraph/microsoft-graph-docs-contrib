---
title: "call resource type"
ms.date: 11/15/2024
description: "The call resource is created when there's an incoming call for the application or the application creates a new outgoing call via a `POST` on `app/calls`."
author: "ananmishr"
ms.localizationpriority: high
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# call resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **call** resource is created when there's an incoming call for the application or the application creates a new outgoing call via a `POST` on `app/calls`.

Calls can be set up as a peer-to-peer or as a group call. For creating or joining a group call, supply the `chatInfo` and `meetingInfo`. If these aren't supplied, a new group call is created automatically. For an incoming call, record these values in a highly available store, so that your application to rejoin the call in the event your application crashes.

Although the same identity can't be invited multiple times, it's possible for an application to join the same meeting multiple times. Each time the application wants to joins, a separate identity must be provided in order for the clients to display them as different participants.

> **Note:** You can get the join URL from a meeting scheduled with Microsoft Teams. Extract the data from the URL as shown to populate `chatInfo` and `meetingInfo`.

```http
https://teams.microsoft.com/l/meetup-join/19%3ameeting_NTg0NmQ3NTctZDVkZC00YzRhLThmNmEtOGQ3M2E0ODdmZDZk%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%224b444206-207c-42f8-92a6-e332b41c88a2%22%7d
```
Becomes:
```http
https://teams.microsoft.com/l/meetup-join/19:meeting_NTg0NmQ3NTctZDVkZC00YzRhLThmNmEtOGQ3M2E0ODdmZDZk@thread.v2/0?context={"Tid":"72f988bf-86f1-41af-91ab-2d7cd011db47","Oid":"4b444206-207c-42f8-92a6-e332b41c88a2"}
```
> [!NOTE]
> The following known issues are associated with this resource:
> - [Webhook message processing exception: System.Security.Cryptography.CryptographicException](https://developer.microsoft.com/en-us/graph/known-issues/?search=24752)
> - [Support for multi-endpoint use case in delta roster notification mode is missing](https://developer.microsoft.com/en-us/graph/known-issues/?search=24894)
> - [Inconsistent recorded participant number shown on teams client when bot grouping is enabled](https://developer.microsoft.com/en-us/graph/known-issues/?search=28628)

## Methods

| Method                                                             | Return Type                                                 | Description                                                                     |
|:-------------------------------------------------------------------|:------------------------------------------------------------|:--------------------------------------------------------------------------------|
| [Create](../api/application-post-calls.md)                         | [call](call.md)                      | Create **call** enables your bot to create a new outgoing peer-to-peer or group call, or join an existing meeting.|
| [Get](../api/call-get.md)                                     | [call](call.md)                                             | Read properties of the **call** object.                                         |
| [Delete/hang up](../api/call-delete.md)                                    | None                                                            | Delete or Hang-up an active **call**.                                           |
| [Keep alive](../api/call-keepalive.md)                             | None                                                  | Ensure that the call remains active.
| **Call Handling**                                                  |                                                        |                                                                                 |
| [Answer](../api/call-answer.md)                                    | None                                                            | Answer an incoming call.                                                        |
| [Reject](../api/call-reject.md)                                    | None                                                            | Reject an incoming call.                                                        |
| [Redirect](../api/call-redirect.md)                                | None                                                            | Redirect an incoming call.                                                      |
| [Transfer](../api/call-transfer.md)                                | None                                                            | Transfer a call                                                                 |
| **Group Calls**                                                    |                                                             |                                                                            |
| [List](../api/call-list-participants.md)              | [participant](participant.md) collection                    | Get a participant object collection.                                            |
| [Invite participants](../api/participant-invite.md)                | [commsOperation](commsoperation.md)                         | Invite participants to the active call.                                         |
| [Mute all participants](../api/participant-muteall.md)             | [commsOperation](commsoperation.md)                         | Mute all participants in the call.                                              |
| [Mute participant](../api/participant-mute.md)                     | [muteParticipantOperation](muteparticipantoperation.md)     | Mute a participant in the group call.                                           |
| [Create](../api/call-post-audioroutinggroups.md) | [audioRoutingGroup](audioroutinggroup.md)                   | Create a new **audioRoutingGroup** by posting to the audioRoutingGroups collection. |
| [List audio routing groups](../api/call-list-audioroutinggroups.md)  | [audioRoutingGroup](audioroutinggroup.md) collection        | Get an **audioRoutingGroup** object collection.                                      |
| [Add large gallery view](../api/call-addlargegalleryview.md)            | [addLargeGalleryViewOperation](addlargegalleryviewoperation.md)  | Add the large gallery view to a call.                                      |
| **Interactive-Voice-Response**                                     |                                                             |                                                                                 |
| [Play prompt](../api/call-playprompt.md)                            | [playPromptOperation](playpromptoperation.md)               | Play prompt in the call.                                                        |
| [Record response](../api/call-record.md)                            | [recordOperation](recordoperation.md)                       | Records a short audio response from the caller.                                        |
| [Cancel media processing](../api/call-cancelmediaprocessing.md)      | [commsOperation](commsoperation.md)                         | Cancel media processing.                                                        |
| [Subscribe to tone](../api/call-subscribetotone.md)                  | [commsOperation](commsoperation.md)                         | Subscribe to DTMF tones.                                                        |
| [Send DTMF tone](../api/call-senddtmftones.md)                      | [commsOperation](commsoperation.md)                         | Send DTMF tones in a call.                                                      |
| **Self Participant Operations**                                    |                                                             |                                                                                 |
| [Mute application](../api/call-mute.md)                                        | [muteParticipantOperation](muteparticipantoperation.md)     | Mute self in the call.|
| [Unmute application](../api/call-unmute.md)                                    | [unmuteParticipantOperation](unmuteparticipantoperation.md) | Unmute self in the call. |
| [Change screen sharing role](../api/call-changescreensharingrole.md)  | None                                                        | Start and stop sharing screen in the call.|
| **Recording Operations**                                           |                                                             |                                              |
| [Update recording status](../api/call-updaterecordingstatus.md) | [updateRecordingStatusOperation](updateRecordingStatusOperation.md) | Updates the recording status.|
| [Start recording](../api/call-startrecording.md)            | [startRecordingOperation](startRecordingOperation.md) | Starts the recording of a call. |
| [Stop recording](../api/call-stoprecording.md)            | [stopRecordingOperation](stopRecordingOperation.md) | Stops the recording of a call. |
| [Start transcription](../api/call-starttranscription.md)            | [startTranscriptionOperation](startTranscriptionOperation.md) | Starts the transcription of a call.|
| [Stop transcription](../api/call-stoptranscription.md)            | [stopTranscriptionOperation](stopTranscriptionOperation.md) | Stops the transcription of a call.  |
| **Logging Operations**                                           |                                                             |                                              |
| [Log teleconference device quality data](../api/call-logteleconferencedevicequality.md)| [teleconferenceDeviceQuality](teleconferencedevicequality.md) | Log video teleconferencing device quality data.|

## Properties

| Property            | Type                                                                                                   | Description                                                                                                                                                                                         |
| :------------------ | :------------------------------------------------------------------------------------------------------| :------------------------------------------------------------------ |
| activeModalities    | modality collection                                                                                      | The list of active modalities. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`. Read-only.           |
| answeredBy          | [participantInfo](participantinfo.md)                                                                  | The participant that answered the call. Read-only.                                                                                         |
| callRoutes          | [callRoute](callroute.md) collection                                                                   | The routing information on how the call was retargeted. Read-only.                                                                         |
| callbackUri         | String                                                                                                 | The callback URL on which callbacks will be delivered. Must be `https`.                                                                    |
| callChainId         | String                                                                                                 | A unique identifier for all the participant calls in a conference or a unique identifier for two participant calls in a P2P call.  This needs to be copied over from `Microsoft.Graph.Call.CallChainId`. |
| callOptions            | [outgoingCallOptions](outgoingcalloptions.md)                                                         | Contains the optional features for the call.   |
| chatInfo            | [chatInfo](chatinfo.md)                                                                                | The chat information. Required information for meeting scenarios.                                                                          |
| direction           | callDirection                                                                                                 | The direction of the call. The possible values are `incoming` or `outgoing`. Read-only.                                             |
| id                  | String                                                                                                 | The call id. Read-only.                                                                                                                    |
| incomingContext     | [incomingContext](incomingcontext.md)                                                                  | The context associated with an incoming call. Read-only. Server generated.                                                                 |
| mediaConfig         | [appHostedMediaConfig](apphostedmediaconfig.md) or [serviceHostedMediaConfig](servicehostedmediaconfig.md) | The media configuration. Required information for creating peer to peer calls or joining meetings.                                     |
| mediaState          | [callMediaState](callmediastate.md)                                                                    | Read-only. The call media state. |
| meetingCapability   | [meetingCapability](meetingcapability.md)                                                              | Contains the capabilities of a meeting. Read-only.                                                                                         |
| meetingInfo         | [organizerMeetingInfo](organizermeetinginfo.md), [tokenMeetingInfo](tokenmeetinginfo.md), or [joinMeetingIdMeetingInfo](joinmeetingidmeetinginfo.md)            | The meeting information. Required information for meeting scenarios.              |
|transcription     | [callTranscriptionInfo](calltranscriptioninfo.md)                                                         | The transcription information for the call. Read-only.                           |
| myParticipantId     | String                                                                                                   | Read-only.                                                                                                                               |
| requestedModalities | modality collection                                                                                      | The list of requested modalities. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`.                   |
| resultInfo          | [resultInfo](resultinfo.md)                                                                            | The result information. For example, the result can hold termination reason. Read-only.                                                    |
| ringingTimeoutInSeconds | Int32                                                                                              | Ringing timeout in seconds for outgoing peer to peer calls. The max value for this attribute is 115 seconds.                               |
| routingPolicies     | routingPolicy collection                                                                                      | This property is applicable for peer to peer calls only. Possible values are: `none`, `noMissedCall`, `disableForwardingExceptPhone`, `disableForwarding`, `preferSkypeForBusiness`, `unknownFutureValue`.                                                                                                   |
| source              | [participantInfo](participantinfo.md)                                                                  | The originator of the call.                                                                                                                |
| state               | callState                                                                                                 | The call state. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transferAccepted`, `redirecting`, `terminating`, `terminated`. Read-only.                          |
| subject             | String                                                                                                 | The subject of the conversation.                                                                                                           |
| targets             | [invitationParticipantInfo](participantinfo.md) collection                                             | The targets of the call. Required information for creating peer to peer call.                                                              |
| tenantId            | String                                                                                                 | Read-only. `tenantId` in Microsoft Entra ID.                                                                                               |
| terminationReason   | String                                                                                                 | Read-only.                                                                                                                                 |
| toneInfo            | [toneInfo](toneinfo.md)                                                                                | Read-only.                                                                                                                                 |

## Relationships

| Relationship        | Type                                                 | Description                                                         |
|:--------------------|:-----------------------------------------------------|:--------------------------------------------------------------------|
| audioRoutingGroups  | [audioRoutingGroup](audioroutinggroup.md) collection | Read-only. Nullable.                                                |
| operations          | [commsOperation](commsoperation.md) collection       | Read-only. Nullable.                                                |
| participants        | [participant](participant.md) collection             | Read-only. Nullable.                                                |
| contentSharingSessions| [contentSharingSession](contentsharingsession.md) collection| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "activeModalities",
    "answeredBy",
    "callRoutes",
    "callChainId",
    "callOptions",
    "chatInfo",
    "contentSharingSessions",
    "direction",
    "id",
    "incomingContext",
    "mediaState",
    "meetingCapability",
    "meetingInfo",
    "transcription",
    "myParticipantId",
    "replacesContext",
    "resultInfo",
    "ringingTimeoutInSeconds",
    "routingPolicies",
    "state",
    "source",
    "subject",
    "targets",
    "tenantId",
    "terminationReason",
    "toneInfo"
  ],
  "keyProperty":"id",
  "@odata.type": "microsoft.graph.call"
}-->
```json
{
  "activeModalities": ["String"],
  "answeredBy": {"@odata.type": "#microsoft.graph.participantInfo"},
  "callRoutes": [{"@odata.type": "#microsoft.graph.callRoute"}],
  "callbackUri": "String",
  "callChainId": "String",
  "callOptions": {"@odata.type": "#microsoft.graph.outgoingCallOptions"},
  "chatInfo": {"@odata.type": "#microsoft.graph.chatInfo"},
  "contentSharingSessions": [{ "@odata.type": "microsoft.graph.contentSharingSession" }],
  "direction": "String",
  "id": "String (identifier)",
  "incomingContext": {"@odata.type": "#microsoft.graph.incomingContext"},
  "mediaConfig": {"@odata.type": "#microsoft.graph.mediaConfig"},
  "mediaState": {"@odata.type": "#microsoft.graph.callMediaState"},
  "meetingCapability": {"@odata.type": "#microsoft.graph.meetingCapability"},
  "meetingInfo": {"@odata.type": "#microsoft.graph.meetingInfo"},
  "transcription": {"@odata.type": "#microsoft.graph.callTranscriptionInfo"},
  "myParticipantId": "String",
  "requestedModalities": ["String"],
  "resultInfo": {"@odata.type": "#microsoft.graph.resultInfo"},
  "ringingTimeoutInSeconds": 99,
  "routingPolicies": ["String"],
  "source": {"@odata.type": "#microsoft.graph.participantInfo"},
  "state": "String",
  "subject": "String",
  "targets": [{"@odata.type": "#microsoft.graph.invitationParticipantInfo"}],
  "tenantId": "String",
  "terminationReason": "String",
  "toneInfo": {"@odata.type": "#microsoft.graph.toneInfo"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
