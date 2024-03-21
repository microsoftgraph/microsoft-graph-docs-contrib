---
title: "callLogRow resource type"
description: "Represents the basic properties of the PSTN call log, direct routing call log, and SMS log."
author: "rihob"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
---

# callLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the basic properties of the PSTN call log, direct routing call log, and SMS log.

The base type for [microsoft.graph.callRecords.pstnCallLogRow](callrecords-pstncalllogrow.md), [microsoft.graph.callRecords.directRoutingLogRow](callrecords-directroutinglogrow.md) and [microsoft.graph.callRecords.smsLogRow](callrecords-smslogrow.md).
## Properties

|Property|Type|Description|
|:---|:---|:---|
|administrativeUnitInfos| [microsoft.graph.callRecords.administrativeUnitInfo](callrecords-administrativeunitinfo.md) collection|Collection of administrative units associated to a call.|
|id|String|Unique call identifier (GUID).|
|otherPartyCountryCode|String|Country code of the caller for an incoming call, or callee for an outgoing call. For details, see [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Microsoft Entra ID. This and other user info is null/empty for bot call types (`ucap_in`, `ucap_out`).|
|userPrincipalName|String|The user principal name (sign-in name) in Microsoft Entra ID. It's usually the same as the user's SIP address and can be the same as the user's e-mail address.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecordscallLogRow",
  "keyProperty": "id"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.callRecords.callLogRow",
  "administrativeUnitInfos": [{"@odata.type": "microsoft.graph.callRecords.administrativeUnitInfo"}],
  "id": "String (identifier)",
  "otherPartyCountryCode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
}
```
