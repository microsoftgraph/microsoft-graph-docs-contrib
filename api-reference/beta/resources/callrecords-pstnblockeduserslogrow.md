---
title: "pstnBlockedUsersLogRow resource type"
description: "Represents a row of data in the public switched telephone network (PSTN) blocked users log."
author: "radoslag"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# pstnBlockedUsersLogRow resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a row of data in the public switched telephone network (PSTN) blocked users log. Each row maps to a user blocked/unblocked from making PSTN calls.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|blockDateTime|DateTimeOffset|The date and time when the user was blocked/unblocked from making PSTN calls.|
|blockReason|String|The reason why the user is blocked/unblocked from making calls.|
|remediationId|String|Unique identifier (GUID) for the blocking/unblocking action.|
|userBlockMode|microsoft.graph.callRecords.pstnUserBlockMode|Indicates whether the user is blocked or unblocked from making PSTN calls in Microsoft Teams. The possible values are: `blocked`, `unblocked`, `unknownFutureValue`.|
|userDisplayName|String|Display name of the user.|
|userId|String|The unique identifier (GUID) of the user in Azure Active Directory.|
|userPrincipalName|String|UserPrincipalName (sign-in name) in Azure Active Directory. This is usually the same as user's SIP Address, and can be same as user's e-mail address|
|userTelephoneNumber|String|User's blocked number. For details, see [E.164](https://en.wikipedia.org/wiki/E.164).|

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
  "blockDateTime": "String (timestamp)",
  "blockReason": "String",
  "remediationId": "String",
  "userBlockMode": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userTelephoneNumber": "String"
}
```
