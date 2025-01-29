---
title: "teamsMessageEvidence resource type"
description: "A file that is reported in the alert as evidence."
ms.date: 29/01/2025
author: "t-hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---


# fileEvidence resource type

Namespace: microsoft.graph.security

A file that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
| `campaignId` | String  | The identifier of the campaign in which teams message is present. |
| `groupId`    | String  | The identifier of Team or Group in which this message is present.   |
| `messageId`  | String  | Non unique identifier of a message    |
| `parentMessageId` | String  | Identifier of the message for which current message was a reply, else same as MessageId    |
| `owningTenantId`  | Guid  | Tenant Id of the owner of the message (GUID)   |
| `threadId`   | String  | Identifier of the channel/chat that this message is part of|
| `threadType` | String  | Teams message type - Chat, Topic, Space, Meeting   |
| `channelId`  | String  | The channel id of this Teams message|
| `sourceId`   | String  | The source id of this Teams message |
| `sourceAppName`   | String  | Source of the message (desktop, mobile etc.)  |
| `isExternal` | Boolean | Indicates if there are external users in the chat  |
| `isOwned`    | Boolean | Boolean value indicating if the message is owned by your organization  |
| `messageDirection`| [microsoft.graph.security.antispamTeamsDirection](#antispamTeamsDirection-values)  | Directionality of the Teams Message |
| `deliveryAction`  | [microsoft.graph.security.teamsMessageDeliveryAction](#teamsMessageDeliveryAction-values)  | The delivery action of this Teams message like Delivered, Blocked, Redelivered   |
| `deliveryLocation`| [microsoft.graph.security.teamsDeliveryLocation](#teamsDeliveryLocation-values)   | The delivery location of this Teams message like Teams, Quarantine|
| `subject`    | String  | The subject of this Teams message   |
| `receivedDateTime`| DateTimeOffset | The received date of this message   |
| `lastModifiedDateTime` | DateTimeOffset | Date and time when the message was last edited|
| `recipients` | String collection | The recipients of this Teams message.    |
| `senderFromAddress`    | String  | The sender's smtp format address |
| `senderIP`   | String  | The sender's IP address   |
| `suspiciousRecipients` | String collection | The list of recipients who were detected as suspicious  |
| `files` | [microsoft.graph.security.fileEvidence](./security-fileevidence.md) collection  | Holds list of File entities which relate (attached) to this Teams message entity instance. |
| `urls`  | [microsoft.graph.security.urlEvidence](./security-urlevidence.md) collection  | The Urls contained in this Teams message   |

#### antispamTeamsDirection values

Teams Directionality Status enumeration

| Member | Description   |
| :------------| :------------------ |
| `unknown`  | Unknown enumeration value.  |
| `inbound`  | Inbound.|
| `outbound` | Outbound.    |
| `intraorg` | Internal.    |
| `unknownFutureValue` | unknownFutureValue for evolvable enums pattern. |


#### teamsMessageDeliveryAction values

Delivery action enumeration

| Member | Description|
| :------| :--------------- |
| `unknown`  | Unknown enumeration value.  |
| `deliveredAsSpam`    | Junked. |
| `delivered`| Delivered.   |
| `blocked`  | Blocked.|
| `replaced` | Replaced.    |
| `unknownFutureValue` | unknownFutureValue for evolvable enums pattern. |


#### teamsDeliveryLocation values

Teams Delivery location enumeration

| Value | Description  |
|------------|------------|
| `unknown`  | Unknown enumeration value.  |
| `teams`    | Message is delivered.   |
| `quarantine`    | Quarantined. |
| `failed`   | Message was blocked.    |
| `unknownFutureValue` | unknownFutureValue for evolvable enums pattern. |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.teamsMessageEvidence",
  "createdDateTime": "String (timestamp)",
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "campaignId": "String",
  "groupId": "String",
  "messageId": "String",
  "parentMessageId": "String",
  "owningTenantId": "Guid",
  "threadId": "String",
  "threadType": "String",
  "channelId": "String",
  "sourceId": "String",
  "sourceAppName": "String",
  "isExternal": "Boolean",
  "isOwned": "Boolean",
  "messageDirection": "String",
  "deliveryAction": "String",
  "deliveryLocation": "String",
  "subject": "String",
  "receivedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "recipients": [
    "String"
  ],
  "senderFromAddress": "String",
  "senderIP": "String",
  "suspiciousRecipients": [
    "String"
  ],
  "files": [{
    "@odata.type": "microsoft.graph.security.fileEvidence"
  }],
  "urls": [{
    "@odata.type": "microsoft.graph.security.urlEvidence"
  }]
}
```