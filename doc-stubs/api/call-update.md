---
title: "Update call"
description: "Update the properties of a call object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update call
Namespace: microsoft.graph

Update the properties of a [call](../resources/call.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /app/calls/{callId}
PATCH /communications/calls/{callId}
PATCH /participantLeftNotification/call
PATCH /participantJoiningNotification/call
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [call](../resources/call.md) object.

The following table shows the properties that are required when you update the [call](../resources/call.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|state|callState|**TODO: Add Description**. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transferAccepted`, `redirecting`, `terminating`, `terminated`, `unknownFutureValue`.|
|mediaState|[callMediaState](../resources/callmediastate.md)|**TODO: Add Description**|
|resultInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|terminationReason|String|**TODO: Add Description**|
|direction|callDirection|**TODO: Add Description**. Possible values are: `incoming`, `outgoing`.|
|ringingTimeoutInSeconds|Int32|**TODO: Add Description**|
|subject|String|**TODO: Add Description**|
|callbackUri|String|**TODO: Add Description**|
|callRoutes|[callRoute](../resources/callroute.md) collection|**TODO: Add Description**|
|source|[participantInfo](../resources/participantinfo.md)|**TODO: Add Description**|
|targets|[invitationParticipantInfo](../resources/invitationparticipantinfo.md) collection|**TODO: Add Description**|
|answeredBy|[participantInfo](../resources/participantinfo.md)|**TODO: Add Description**|
|requestedModalities|modality collection|**TODO: Add Description**. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `unknownFutureValue`.|
|activeModalities|modality collection|**TODO: Add Description**. Possible values are: `unknown`, `audio`, `video`, `videoBasedScreenSharing`, `data`, `unknownFutureValue`.|
|mediaConfig|[mediaConfig](../resources/mediaconfig.md)|**TODO: Add Description**|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description**|
|callOptions|[callOptions](../resources/calloptions.md)|**TODO: Add Description**|
|meetingInfo|[meetingInfo](../resources/meetinginfo.md)|**TODO: Add Description**|
|transcription|[callTranscriptionInfo](../resources/calltranscriptioninfo.md)|**TODO: Add Description**|
|meetingCapability|[meetingCapability](../resources/meetingcapability.md)|**TODO: Add Description**|
|routingPolicies|routingPolicy collection|**TODO: Add Description**. Possible values are: `none`, `noMissedCall`, `disableForwardingExceptPhone`, `disableForwarding`, `preferSkypeForBusiness`, `unknownFutureValue`.|
|tenantId|String|**TODO: Add Description**|
|myParticipantId|String|**TODO: Add Description**|
|toneInfo|[toneInfo](../resources/toneinfo.md)|**TODO: Add Description**|
|callChainId|String|**TODO: Add Description**|
|incomingContext|[incomingContext](../resources/incomingcontext.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [call](../resources/call.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_call"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/app/calls/{callId}
Content-Type: application/json
Content-length: 1568

{
  "@odata.type": "#microsoft.graph.call",
  "state": "String",
  "mediaState": {
    "@odata.type": "microsoft.graph.callMediaState"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "terminationReason": "String",
  "direction": "String",
  "ringingTimeoutInSeconds": "Integer",
  "subject": "String",
  "callbackUri": "String",
  "callRoutes": [
    {
      "@odata.type": "microsoft.graph.callRoute"
    }
  ],
  "source": {
    "@odata.type": "microsoft.graph.participantInfo"
  },
  "targets": [
    {
      "@odata.type": "microsoft.graph.invitationParticipantInfo"
    }
  ],
  "answeredBy": {
    "@odata.type": "microsoft.graph.participantInfo"
  },
  "requestedModalities": [
    "String"
  ],
  "activeModalities": [
    "String"
  ],
  "mediaConfig": {
    "@odata.type": "microsoft.graph.mediaConfig"
  },
  "chatInfo": {
    "@odata.type": "microsoft.graph.chatInfo"
  },
  "callOptions": {
    "@odata.type": "microsoft.graph.callOptions"
  },
  "meetingInfo": {
    "@odata.type": "microsoft.graph.meetingInfo"
  },
  "transcription": {
    "@odata.type": "microsoft.graph.callTranscriptionInfo"
  },
  "meetingCapability": {
    "@odata.type": "microsoft.graph.meetingCapability"
  },
  "routingPolicies": [
    "String"
  ],
  "tenantId": "String",
  "myParticipantId": "String",
  "toneInfo": {
    "@odata.type": "microsoft.graph.toneInfo"
  },
  "callChainId": "String",
  "incomingContext": {
    "@odata.type": "microsoft.graph.incomingContext"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.call",
  "id": "d65418af-18af-d654-af18-54d6af1854d6",
  "state": "String",
  "mediaState": {
    "@odata.type": "microsoft.graph.callMediaState"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "terminationReason": "String",
  "direction": "String",
  "ringingTimeoutInSeconds": "Integer",
  "subject": "String",
  "callbackUri": "String",
  "callRoutes": [
    {
      "@odata.type": "microsoft.graph.callRoute"
    }
  ],
  "source": {
    "@odata.type": "microsoft.graph.participantInfo"
  },
  "targets": [
    {
      "@odata.type": "microsoft.graph.invitationParticipantInfo"
    }
  ],
  "answeredBy": {
    "@odata.type": "microsoft.graph.participantInfo"
  },
  "requestedModalities": [
    "String"
  ],
  "activeModalities": [
    "String"
  ],
  "mediaConfig": {
    "@odata.type": "microsoft.graph.mediaConfig"
  },
  "chatInfo": {
    "@odata.type": "microsoft.graph.chatInfo"
  },
  "callOptions": {
    "@odata.type": "microsoft.graph.callOptions"
  },
  "meetingInfo": {
    "@odata.type": "microsoft.graph.meetingInfo"
  },
  "transcription": {
    "@odata.type": "microsoft.graph.callTranscriptionInfo"
  },
  "meetingCapability": {
    "@odata.type": "microsoft.graph.meetingCapability"
  },
  "routingPolicies": [
    "String"
  ],
  "tenantId": "String",
  "myParticipantId": "String",
  "toneInfo": {
    "@odata.type": "microsoft.graph.toneInfo"
  },
  "callChainId": "String",
  "incomingContext": {
    "@odata.type": "microsoft.graph.incomingContext"
  }
}
```

