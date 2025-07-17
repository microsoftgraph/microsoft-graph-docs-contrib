---
title: "pstnCallLogRow resource type"
description: "Represents a row of data in the public switched telephone network (PSTN) call log."
author: "saurabhjain0804"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# pstnCallLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the public switched telephone network (PSTN) call log. Each row maps to one call.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get PSTN calls](../api/callrecords-callrecord-getpstncalls.md) | [microsoft.graph.callRecords.pstnCallLogRow](callrecords-pstncalllogrow.md) collection | List **pstnCallLogRow** objects in a call record. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|administrativeUnitInfos| [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection|Collection of administrative units associated to a call.|
|callDurationSource|microsoft.graph.callRecords.pstnCallDurationSource|The source of the call duration data. If the call uses a third-party telecommunications operator via the Operator Connect Program, the operator may provide their own call duration data. In this case, the property value is `operator`. Otherwise, the value is `microsoft`.|
|calleeNumber|String|Number of the user or bot who received the call ([E.164](https://en.wikipedia.org/wiki/E.164)).|
|callerNumber|String|Number of the user or bot who made the call ([E.164](https://en.wikipedia.org/wiki/E.164)).|
|callId|String|Call identifier. Not guaranteed to be unique.|
|callType|String|Indicates whether the call was a PSTN outbound or inbound call and the type of call such as a call placed by a user or an audio conference.|
|charge|Decimal|Amount of money or cost of the call that is charged to your account.|
|clientLocalIpV4Address|String|Local IPv4 of the client that is retrieved from the operating system of the client.|
|clientLocalIpV6Address|String|Local IPv6 of the client that is retrieved from the operating system of the client.|
|clientPublicIpV4Address|String|Public IPv4 of the client that can be used to determine the location of the client.|
|clientPublicIpV6Address|String|Public IPv6 of the client that can be used to determine the location of the client.|
|conferenceId|String|ID of the audio conference.|
|connectionCharge|Decimal|Connection fee price.|
|currency|String|Type of currency used to calculate the cost of the call ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217)).|
|destinationContext|String|Indicates whether the call was `Domestic` (within a country or region) or `International` (outside a country or region) based on the user's location.|
|destinationName|String|Country or region dialed.|
|duration|Int32|How long the call was connected, in seconds.|
|endDateTime|DateTimeOffset|Call end time.|
|id|String|Unique call identifier (GUID).|
|inventoryType|String|User's phone number type, such as a service of toll-free number.|
|licenseCapability|String|The license used for the call.|
|operator|String|The telecommunications operator that provided PSTN services for this call. It may be Microsoft, or it may be a third-party operator via the [Operator Connect Program](https://techcommunity.microsoft.com/t5/microsoft-teams-blog/introducing-operator-connect-and-more-teams-calling-updates/ba-p/2176398).|
|otherPartyCountryCode|String|Country code of the caller for an incoming call, or callee for an outgoing call. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|startDateTime|DateTimeOffset|Call start time.|
|tenantCountryCode|String|Country code of the tenant. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|usageCountryCode|String|Country code of the user. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Microsoft Entra ID. This and other user info is null/empty for bot call types (`ucap_in`, `ucap_out`).|
|userPrincipalName|String|The user principal name (sign-in name) in Microsoft Entra ID. It is usually the same as the user's SIP address and can be the same as the user's e-mail address.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.pstnCallLogRow",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnCallLogRow",
  "administrativeUnitInfos": [{"@odata.type": "microsoft.graph.callRecords.administrativeUnitInfo"}],
  "callDurationSource": "String",
  "calleeNumber": "String",
  "callerNumber": "String",
  "callId": "String",
  "callType": "String",
  "charge": "Decimal",
  "clientLocalIpV4Address": "String",
  "clientLocalIpV6Address": "String",
  "clientPublicIpV4Address": "String",
  "clientPublicIpV6Address": "String",
  "conferenceId": "String",
  "connectionCharge": "Decimal",
  "currency": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "duration": "Int32",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "inventoryType": "String",
  "licenseCapability": "String",
  "operator": "String",
  "otherPartyCountryCode": "String",
  "startDateTime": "String (timestamp)",
  "tenantCountryCode": "String",
  "usageCountryCode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "suppressions": [
      "Error: microsoft.graph.callRecords.pstnCallLogRow/charge:
      Referenced type microsoft.graph.decimal is not defined in the doc set! Potential suggestion: microsoft.graph.groupPolicyPresentationDecimalTextBox",
      "Error: microsoft.graph.callRecords.pstnCallLogRow/connectionCharge:
      Referenced type microsoft.graph.decimal is not defined in the doc set! Potential suggestion: microsoft.graph.groupPolicyPresentationDecimalTextBox",
      "Error: microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport/totalCallCharge:
      Referenced type microsoft.graph.decimal is not defined in the doc set! Potential suggestion: microsoft.graph.groupPolicyPresentationDecimalTextBox",
      "Error: microsoft.graph.callRecords.smsLogRow/callCharge:
      Referenced type microsoft.graph.decimal is not defined in the doc set! Potential suggestion: microsoft.graph.groupPolicyPresentationDecimalTextBox"
    ]
}-->
