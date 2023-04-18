---
title: "directRoutingLogRow resource type"
description: "Represents a row of data in the direct routing call log."
author: "williamlooney"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# directRoutingLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the direct routing call log. Each row maps to one call.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getDirectRoutingCalls](../api/callrecords-callrecord-getdirectroutingcalls.md) | [microsoft.graph.callRecords.directRoutingLogRow collection](callrecords-directroutinglogrow.md)| List **directRoutingLogRow** objects for a call record. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|calleeNumber|String|Number of the user or bot who received the call ([E.164](https://en.wikipedia.org/wiki/E.164) format, but may include additional data).|
|callEndSubReason|Int32|In addition to the SIP codes, Microsoft has own subcodes that indicate the specific issue.|
|callerNumber|String|Number of the user or bot who made the call ([E.164](https://en.wikipedia.org/wiki/E.164) format, but may include additional data).|
|callType|String|Call type and direction.|
|correlationId|String|Identifier (GUID) for the call that you can use when calling Microsoft Support.|
|duration|Int32|Duration of the call in seconds.|
|endDateTime|DateTimeOffset|Only exists for successful (fully established) calls. Time when call ended.|
|failureDateTime|DateTimeOffset|Only exists for failed (not fully established) calls.|
|finalSipCode|Int32|The code with which the call ended ([RFC 3261](https://tools.ietf.org/html/rfc3261)).|
|finalSipCodePhrase|String|Description of the SIP code and Microsoft subcode.|
|id|String|Unique call identifier (GUID).|
|inviteDateTime|DateTimeOffset|When the initial invite was sent.|
|mediaBypassEnabled|Boolean|Indicates if the trunk was enabled for media bypass or not.|
|mediaPathLocation|String|The data center used for media path in non-bypass call.|
|otherPartyCountryCode|String|Country code of the caller in case of an incoming call, or callee in case of an outgoing call. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|signalingLocation|String|The data center used for signaling for both bypass and non-bypass calls.|
|startDateTime|DateTimeOffset|Call start time.<br/>For failed and unanswered calls, this can be equal to invite or failure time.|
|successfulCall|Boolean|Success or attempt.|
|trunkFullyQualifiedDomainName|String|Fully qualified domain name of the session border controller.|
|userCountryCode|String|Country code of the user. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Azure Active Directory. This and other user info will be null/empty for bot call types.|
|userPrincipalName|String|The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  "callEndSubReason": "Int32",
  "callerNumber": "String",
  "callType": "String",
  "correlationId": "String",
  "duration": "Int32",
  "endDateTime": "String (timestamp)",
  "failureDateTime": "String (timestamp)",
  "finalSipCode": "Int32",
  "finalSipCodePhrase": "String",
  "id": "String (identifier)",
  "inviteDateTime": "String (timestamp)",
  "mediaBypassEnabled": "Boolean",
  "mediaPathLocation": "String",
  "otherPartyCountryCode": "String",
  "signalingLocation": "String",
  "startDateTime": "String (timestamp)",
  "successfulCall": "Boolean",
  "trunkFullyQualifiedDomainName": "String",
  "userCountryCode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```
