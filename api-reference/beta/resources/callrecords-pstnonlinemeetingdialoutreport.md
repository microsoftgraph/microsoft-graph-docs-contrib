---
title: "pstnOnlineMeetingDialoutReport resource type"
description: "Represents a report of usage and money spent for the audio conferencing dial-out service over a selected period."
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# pstnOnlineMeetingDialoutReport resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a report of usage and money spent for the audio conferencing dial-out service over a selected period. The report is aggregated by user, user location, destination context (domestic/international), and currency.

All dial-out calls/duration/charge is counted under a meeting organizer. It's not necessarily the same person who dialed out.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getPstnOnlineMeetingDialoutReport](../api/callrecords-callrecord-getpstnonlinemeetingdialoutreport.md) | [microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport](callrecords-pstnonlinemeetingdialoutreport.md) collection | Get aggregated report of usage and money spent for the audio conferencing dial-out service over a selected period as a collection of [pstnOnlineMeetingDialoutReport](../resources/callrecords-pstnonlinemeetingdialoutreport.md) entries. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|currency|String|Currency used to calculate the cost of the call. For details, see [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217).|
|destinationContext|String|Indicates whether the call was `Domestic` (within a country or region) or `International` (outside a country or region) based on the user's location.|
|totalCallCharge|Decimal|Total costs of all the calls within the selected time range, including call charges and connection fees. |
|totalCalls|Int32|Total number of dial-out calls within the selected time range.|
|totalCallSeconds|Int32|Total duration of all the calls within the selected time range, in seconds.|
|usageLocation|String|Country code of the user. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Azure Active Directory.|
|userPrincipalName|String|The user principal name (sign-in name) in Azure Active Directory. This is usually the same as the user's SIP address, and can be same as the user's e-mail address.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnOnlineMeetingDialoutReport",
  "currency": "String",
  "destinationContext": "String",
  "totalCallCharge": "Decimal",
  "totalCalls": "Int32",
  "totalCallSeconds": "Int32",
  "usageLocation": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```
