---
title: "call resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# call resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List calls](../api/call-list.md)|[call](../resources/call.md) collection|Get a list of the [call](../resources/call.md) objects and their properties.|
|[Create call](../api/call-create.md)|[call](../resources/call.md)|Create a new [call](../resources/call.md) object.|
|[Get call](../api/call-get.md)|[call](../resources/call.md)|Read the properties and relationships of a [call](../resources/call.md) object.|
|[Update call](../api/call-update.md)|[call](../resources/call.md)|Update the properties of a [call](../resources/call.md) object.|
|[Delete call](../api/call-delete.md)|None|Deletes a [call](../resources/call.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeModalities|modality collection|**TODO: Add Description**|
|answeredBy|[participantInfo](../resources/participantinfo.md)|**TODO: Add Description**|
|callbackUri|String|**TODO: Add Description**|
|callChainId|String|**TODO: Add Description**|
|callOptions|[callOptions](../resources/calloptions.md)|**TODO: Add Description**|
|callRoutes|[callRoute](../resources/callroute.md) collection|**TODO: Add Description**|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description**|
|direction|callDirection|**TODO: Add Description**. Possible values are: `incoming`, `outgoing`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|incomingContext|[incomingContext](../resources/incomingcontext.md)|**TODO: Add Description**|
|mediaConfig|[mediaConfig](../resources/mediaconfig.md)|**TODO: Add Description**|
|mediaState|[callMediaState](../resources/callmediastate.md)|**TODO: Add Description**|
|meetingCapability|[meetingCapability](../resources/meetingcapability.md)|**TODO: Add Description**|
|meetingInfo|[meetingInfo](../resources/meetinginfo.md)|**TODO: Add Description**|
|myParticipantId|String|**TODO: Add Description**|
|requestedModalities|modality collection|**TODO: Add Description**|
|resultInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|ringingTimeoutInSeconds|Int32|**TODO: Add Description**|
|routingPolicies|routingPolicy collection|**TODO: Add Description**|
|source|[participantInfo](../resources/participantinfo.md)|**TODO: Add Description**|
|state|callState|**TODO: Add Description**. Possible values are: `incoming`, `establishing`, `ringing`, `established`, `hold`, `transferring`, `transferAccepted`, `redirecting`, `terminating`, `terminated`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description**|
|targets|[invitationParticipantInfo](../resources/invitationparticipantinfo.md) collection|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|terminationReason|String|**TODO: Add Description**|
|toneInfo|[toneInfo](../resources/toneinfo.md)|**TODO: Add Description**|
|transcription|[callTranscriptionInfo](../resources/calltranscriptioninfo.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|audioRoutingGroups|[audioRoutingGroup](../resources/audioroutinggroup.md) collection|**TODO: Add Description**|
|operations|[commsOperation](../resources/commsoperation.md) collection|**TODO: Add Description**|
|participants|[participant](../resources/participant.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.call",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.call",
  "id": "String (identifier)",
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

