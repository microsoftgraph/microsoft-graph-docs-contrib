---
title: "teamsMessageEvidence resource type"
description: "Represents a Microsoft Teams message that is reported as part of a security detection alert."
ms.date: 01/29/2025
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# teamsMessageEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Teams message that is reported as part of a security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|  campaignId  | String  | The identifier of the campaign that this Teams message is part of. |
|  channelId   | String  | The channel ID associated with this Teams message. |
|  createdDateTime | DateTimeOffset | Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|  deliveryAction   | [microsoft.graph.security.teamsMessageDeliveryAction](#teamsmessagedeliveryaction-values)  | The delivery action of this Teams message. Possible values are: `unknown`, `deliveredAsSpam`, `delivered`, `blocked`, `replaced`, `unknownFutureValue`.   |
|  deliveryLocation | [microsoft.graph.security.teamsDeliveryLocation](#teamsdeliverylocation-values)   | The delivery location of this Teams message. Possible values are: `unknown`, `teams`, `quarantine`, `failed`, `unknownFutureValue`. |
|  detailedRoles | String collection | Inherited from [alertEvidence](../resources/security-alertevidence.md).    |
|  files | [microsoft.graph.security.fileEvidence](./security-fileevidence.md) collection  | The list of file entities which relate (attached) to this Teams message entity instance. |
|  groupId     | String  | The identifier of the team or group that this message is part of.   |
|  isExternal  | Boolean | Indicates whether external users are in the chat.  |
|  isOwned     | Boolean | Indicates whether the message is owned by your organization.  |
|  lastModifiedDateTime  | DateTimeOffset | Date and time when the message was last edited. |
|  messageDirection | [microsoft.graph.security.antispamTeamsDirection](#antispamteamsdirection-values)  | The direction of the Teams message. |
|  messageId   | String  | Non unique identifier of a message    |
|  owningTenantId   | Guid  | Tenant ID (GUID) of the owner of the message.  |
|  parentMessageId  | String  | Identifier of the message to which the current message is a reply; otherwise, it's the same as the **messageId**.  |
|  receivedDateTime | DateTimeOffset | The received date of this message.   |
|  recipients  | String collection | The recipients of this Teams message.    |
|  remediationStatus | [microsoft.graph.security.evidenceRemediationStatus](../resources/security-alertevidence.md#evidenceremediationstatus-values)  | Inherited from [alertEvidence](../resources/security-alertevidence.md).   |
|  remediationStatusDetails | String  | Inherited from [alertEvidence](../resources/security-alertevidence.md).   |
|  roles   | [microsoft.graph.security.evidenceRole](../resources/security-alertevidence.md#evidencerole-values) collection | Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|  senderFromAddress     | String  | The SMTP format address of the sender. |
|  senderIP    | String  | The IP address of the sender.  |
|  sourceAppName    | String  | Source of the message; for example, `desktop` or `mobile`.  |
|  sourceId    | String  | The source ID of this Teams message. |
|  subject     | String  | The subject of this Teams message.   |
|  suspiciousRecipients | String collection | The list of recipients who were detected as suspicious.  |
|  tags   | String collection | Inherited from [alertEvidence](../resources/security-alertevidence.md). |
|  threadId    | String  | Identifier of the channel or chat that this message is part of. |
|  threadType  | String  | The Teams message type. Supported values are: `Chat`, `Topic`, `Space`, and `Meeting`. |
|  urls  | [microsoft.graph.security.urlEvidence](./security-urlevidence.md) collection  | The URLs contained in this Teams message.   |
|  verdict  |[microsoft.graph.security.evidenceVerdict](../resources/security-alertevidence.md#evidenceverdict-values)| Inherited from [alertEvidence](../resources/security-alertevidence.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.teamsMessageEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
```  json
{
  "@odata.type": "#microsoft.graph.security.teamsMessageEvidence",
  "campaignId": "String",
  "channelId": "String",
  "createdDateTime": "String (timestamp)",
  "deliveryAction": "String",
  "deliveryLocation": "String",
  "files": [{"@odata.type": "microsoft.graph.security.fileEvidence"}],
  "groupId": "String",
  "isExternal": "Boolean",
  "isOwned": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "messageDirection": "String",
  "messageId": "String",
  "owningTenantId": "Guid",
  "parentMessageId": "String",
  "receivedDateTime": "String (timestamp)",
  "recipients": ["String"],
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "senderFromAddress": "String",
  "senderIP": "String",
  "sourceAppName": "String",
  "sourceId": "String",
  "subject": "String",
  "suspiciousRecipients": ["String"],
  "tags": ["String"],
  "threadId": "String",
  "threadType": "String",
  "urls": [{"@odata.type": "microsoft.graph.security.urlEvidence"}],
  "verdict": "String"
}
```