---
title: "directRoutingLogRow resource type"
description: "Represents a row of data in the direct routing call log."
author: "saurabhjain0804"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# directRoutingLogRow resource type

Namespace: microsoft.graph.callRecords

Represents a row of data in the direct routing call log. Each row maps to one call.

Because a direct routing call log may only reflect a portion of a larger call or meeting, the ID of a **directRoutingLogRow** can't be used to retrieve a [callRecord](callrecords-callrecord.md) object.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List direct routing calls](../api/callrecords-callrecord-getdirectroutingcalls.md) | [microsoft.graph.callRecords.directRoutingLogRow](callrecords-directroutinglogrow.md) collection| List **directRoutingLogRow** objects for a call record. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|callEndSubReason|Int32| In addition to the SIP codes, Microsoft has subcodes that indicate the specific issue.|
|callType|String| Call type and direction.|
|calleeNumber|String| Number of the user or bot who received the call. [E.164](https://en.wikipedia.org/wiki/E.164) format, but might include other data.|
|callerNumber|String| Number of the user or bot who made the call. [E.164](https://en.wikipedia.org/wiki/E.164) format, but might include other data.|
|correlationId|String|Identifier for the call that you can use when calling Microsoft Support. GUID.|
|duration|Int32| Duration of the call in seconds.|
|endDateTime|DateTimeOffset| Only exists for successful (fully established) calls. Time when call ended.|
|failureDateTime|DateTimeOffset| Only exists for failed (not fully established) calls.|
|finalSipCodePhrase|String| Description of the SIP code and Microsoft subcode.|
|finalSipCode|Int32| The final response code with which the call ended. For more information, see [RFC 3261](https://tools.ietf.org/html/rfc3261).|
|id|String|Unique call identifier. GUID.|
|inviteDateTime|DateTimeOffset| The date and time when the initial invite was sent.|
|mediaBypassEnabled|Boolean| Indicates whether the trunk was enabled for media bypass.|
|mediaPathLocation|String| The datacenter used for media path in a nonbypass call.|
|signalingLocation|String| The datacenter used for signaling for both bypass and nonbypass calls.|
|startDateTime|DateTimeOffset|Call start time.<br/>For failed and unanswered calls, this value can be equal to the invite or failure time.|
|successfulCall|Boolean| Success or attempt.|
|trunkFullyQualifiedDomainName|String| Fully qualified domain name of the session border controller.|
|userDisplayName|String|Display name of the user.|
|userId|String|Calling user's ID in Microsoft Graph. This and other user information is null/empty for bot call types. GUID.|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Microsoft Entra ID. This value is usually the same as the user's SIP Address, and can be the same as the user's email address.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.directRoutingLogRow",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.directRoutingLogRow",
  "calleeNumber": "String",
  "callEndSubReason": "Integer",
  "callerNumber": "String",
  "callType": "String",
  "correlationId": "String",
  "duration": "Integer",
  "endDateTime": "String (timestamp)",
  "failureDateTime": "String (timestamp)",
  "finalSipCode": "Integer",
  "finalSipCodePhrase": "String",
  "id": "String (identifier)",
  "inviteDateTime": "String (timestamp)",
  "mediaBypassEnabled": "Boolean",
  "mediaPathLocation": "String",
  "signalingLocation": "String",
  "startDateTime": "String (timestamp)",
  "successfulCall": "Boolean",
  "trunkFullyQualifiedDomainName": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```
