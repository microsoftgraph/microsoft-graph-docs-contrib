---
title: "pstnBlockedUsersLogRow resource type"
description: "Represents a row of data in the PSTN blocked users log"
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# pstnBlockedUsersLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the PSTN blocked users log. Each row maps to a user blocked/unblocked from making PSTN calls.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getPstnBlockedUsersLog](../api/callrecords-callrecord-getpstnblockeduserslog.md) | [microsoft.graph.callRecords.pstnBlockedUsersLogRow collection](callrecords-pstnblockeduserslogrow.md) | Get log of users who are blocked/unblocked from making PSTN calls in Teams |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|blockDateTime|DateTimeOffset|Block or unblock time|
|blockReason|String|Reason the user is blocked/unblocked from making calls|
|remediationId|String|ID of the blocking/unblocking action (GUID)|
|userBlockMode|microsoft.graph.callRecords.pstnUserBlockMode|Indicates whether the user is blocked or unblocked from making PSTN calls in Teams. The possible values are: `blocked`, `unblocked`, `unknownFutureValue`|
|userDisplayName|String|Display name of the user|
|userId|String|Blocked user's ID in Graph (GUID)|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address|
|userTelephoneNumber|String|User's blocked number ([E.164](https://en.wikipedia.org/wiki/E.164))|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.pstnBlockedUsersLogRow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnBlockedUsersLogRow",
  "userId": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "blockDateTime": "String (timestamp)",
  "userTelephoneNumber": "String",
  "userBlockMode": "String",
  "blockReason": "String",
  "remediationId": "String"
}
```
