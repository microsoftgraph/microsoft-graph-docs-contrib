---
title: "smsLogRow resource type"
description: "Represents a row of data in the log of sent and received SMS"
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# smsLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the log of sent and received SMS. Each row maps to one SMS.

Per-country privacy requirements include the obfuscation of the external (not owned by the customer) phone numbers for some countries based on the organization's location.
For those countries the three or four last digits of the phone number are replaced with asterisks (+123 456789***). For the inbound SMS the sender number may be obfuscated, for outbound SMS the receiver number may be obfuscated.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getSmsLog](../api/callrecords-callrecord-getsmslog.md) | [microsoft.graph.callRecords.smsLogRow collection](callrecords-smslogrow.md) | Get log of sent/received SMS |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|callCharge|Double|Amount of money or cost of the SMS that is charged|
|currency|String|Currency used to calculate the cost of the call ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217))|
|destinationContext|String|Whether the SMS was `Domestic` (within a country or region) or `International` (outside a country or region) based on the user's location|
|destinationName|String|Country or region of a phone number that received the SMS|
|destinationNumber|String|Partially obfuscated phone number that received the SMS ([E.164](https://en.wikipedia.org/wiki/E.164))|
|id|String|Unique SMS identifier (GUID)|
|licenseCapability|String|The license used for the SMS|
|otherPartyCountryCode|String|In case of outbound SMS the country code of the receiver; in case of inbound SMS the country code of the sender ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2))|
|sentDateTime|DateTimeOffset|SMS sent time|
|smsId|String|SMS identifier, not guaranteed to be unique|
|smsType|String|Type of SMS (such as outbound or inbound)|
|smsUnits|Int32|Number of SMS units sent/received|
|sourceNumber|String|Partially obfuscated phone number that sent the SMS ([E.164](https://en.wikipedia.org/wiki/E.164))|
|tenantCountryCode|String|Country code of the tenant ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2))|
|userCountryCode|String|Country code of the user ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2))|
|userDisplayName|String|Display name of the user|
|userId|String|User Id in Graph (GUID)|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.smsLogRow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecords.smsLogRow",
  "id": "String (identifier)",
  "smsId": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "userCountryCode": "String",
  "tenantCountryCode": "String",
  "sourceNumber": "String",
  "destinationNumber": "String",
  "sentDateTime": "String (timestamp)",
  "callCharge": "Double",
  "currency": "String",
  "smsType": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "otherPartyCountryCode": "String",
  "licenseCapability": "String",
  "smsUnits": "Integer"
}
```
