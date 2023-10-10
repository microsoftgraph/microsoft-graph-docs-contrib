---
title: "pstnCallLogRow resource type"
description: "Represents a row of data in the public switched telephone network (PSTN) call log."
author: "mcm223"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# pstnCallLogRow resource type

Namespace: microsoft.graph.callRecords

Represents a row of data in the public switched telephone network (PSTN) call log. Each row maps to one call.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getPstnCalls](../api/callrecords-callrecord-getpstncalls.md) | [microsoft.graph.callRecords.pstnCallLogRow collection](callrecords-pstncalllogrow.md) | List **pstnCallLogRow** objects in a call record. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|callDurationSource|microsoft.graph.callRecords.pstnCallDurationSource|The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is `operator`. Otherwise, the value is `microsoft`.|
|calleeNumber|String|Number dialed in [E.164](https://en.wikipedia.org/wiki/E.164) format.|
|callerNumber|String|Number that received the call for inbound calls or the number dialed for outbound calls. E.164 format.|
|callId|String|Call identifier. Not guaranteed to be unique.|
|callType|String|Whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.|
|charge|Double|Amount of money or cost of the call that is charged to your account.|
|conferenceId|String|ID of the audio conference.|
|connectionCharge|Double|Connection fee price.|
|currency|String|Type of currency used to calculate the cost of the call. For details, see ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217).|
|destinationContext|String|Whether the call was domestic (within a country or region) or international (outside a country or region) based on the user's location.|
|destinationName|String|Country or region dialed.|
|duration|Int32|How long the call was connected, in seconds.|
|endDateTime|DateTimeOffset|Call end time.|
|id|String|Unique call identifier. GUID.|
|inventoryType|String|User's phone number type, such as a service of toll-free number.|
|licenseCapability|String|The license used for the call.|
|operator|String|The telecommunications operator which provided PSTN services for this call. This may be Microsoft, or it may be a third-party operator via the [Operator Connect Program](https://techcommunity.microsoft.com/t5/microsoft-teams-blog/introducing-operator-connect-and-more-teams-calling-updates/ba-p/2176398).|
|startDateTime|DateTimeOffset|Call start time.|
|tenantCountryCode|String|Country code of the tenant. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|usageCountryCode|String|Country code of the user. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|Calling user's ID in Graph. GUID. This and other user info will be null/empty for bot call types (ucap_in, ucap_out).|
|userPrincipalName|String|The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.pstnCallLogRow",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnCallLogRow",
  "callDurationSource": "String",
  "calleeNumber": "String",
  "callId": "String",
  "callerNumber": "String",
  "callType": "String",
  "charge": "Double",
  "connectionCharge": "Double",
  "conferenceId": "String",
  "currency": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "duration": "Integer",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "inventoryType": "String",
  "licenseCapability": "String",
  "operator": "String",
  "startDateTime": "String (timestamp)",
  "tenantCountryCode": "String",
  "usageCountryCode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```


