---
title: "smsLogRow resource type"
description: "Represents a row of data in the log of a sent or received SMS."
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# smsLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the log of a sent or received SMS. Each row maps to one SMS.

Per-country privacy requirements include the obfuscation of the external (not owned by the customer) phone numbers for some countries based on the location of the organization.
For those countries, the three or four last digits of the external phone number are replaced with asterisks (for example, +123 456789***).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getSmsLog](../api/callrecords-callrecord-getsmslog.md) | [microsoft.graph.callRecords.smsLogRow](callrecords-smslogrow.md) collection | Get the log of a sent/received SMS as a collection of [smsLogRow](../resources/callrecords-smslogrow.md) entries. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|callCharge|Decimal|Amount of money or cost of the SMS that is charged.|
|currency|String|Currency used to calculate the cost of the call. For details, see [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217).|
|destinationContext|String|Indicates whether the SMS was `Domestic` (within a country or region) or `International` (outside a country or region) based on the user's location.|
|destinationName|String|Country or region of a phone number that received the SMS.|
|destinationNumber|String|Partially obfuscated phone number that received the SMS. For details, see [E.164](https://en.wikipedia.org/wiki/E.164).|
|id|String|Unique identifier (GUID) for the SMS.|
|licenseCapability|String|The license used for the SMS.|
|otherPartyCountryCode|String|For an outbound SMS, the country code of the receiver; otherwise (inbound SMS) the country code of the sender. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|sentDateTime|DateTimeOffset|The date and time when the SMS was sent.|
|smsId|String|SMS identifier. Not guaranteed to be unique.|
|smsType|String|Type of SMS such as outbound or inbound.|
|smsUnits|Int32|Number of SMS units sent/received.|
|sourceNumber|String|Partially obfuscated phone number that sent the SMS. For details, see [E.164](https://en.wikipedia.org/wiki/E.164).|
|tenantCountryCode|String|Country code of the tenant. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userCountryCode|String|Country code of the user. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Azure Active Directory.|
|userPrincipalName|String|The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.|

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
  "callCharge": "Decimal",
  "currency": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "destinationNumber": "String",
  "id": "String (identifier)",
  "licenseCapability": "String",
  "otherPartyCountryCode": "String",
  "sentDateTime": "String (timestamp)",
  "smsId": "String",
  "smsType": "String",
  "smsUnits": "Int32",
  "sourceNumber": "String",
  "tenantCountryCode": "String",
  "userCountryCode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"  
}
```
