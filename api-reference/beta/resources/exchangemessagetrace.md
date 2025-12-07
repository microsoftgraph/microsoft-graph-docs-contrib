---
title: "exchangeMessageTrace resource type"
toc.title: "Message trace (preview)"
description: "Represents the trace information for an email message as it passes through the Exchange Online organization"
author: "Huajian-MSIT"
ms.date: 12/04/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exchangeMessageTrace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the trace information for an email message as it passes through the Exchange Online organization. Message trace enables tenant administrators to track the lifecycle of an email, determine its delivery status—whether delivered, pending, failed, or quarantined—and understand the actions applied to it.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List messageTraces](../api/messagetracingroot-list-messagetraces.md)|[exchangeMessageTrace](../resources/exchangemessagetrace.md) collection|Get a list of [exchangeMessageTrace](../resources/exchangemessagetrace.md) objects.|
|[getDetailsByRecipient](../api/exchangemessagetrace-getdetailsbyrecipient.md)|[exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) collection|Get a list of [exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) objects filtered on the recipient.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|fromIP|String|The source IP address. For incoming messages, this value is the public IP address of the SMTP email server that sent the message.|
|id|String|The unique identifier for the message trace.|
|messageId|String|The Message-ID header field of the message. The format of the Message-ID depends on the messaging server that sent the message.|
|receivedDateTime|DateTimeOffset|The date and time when the message was received by Exchange Online. The timestamp is in UTC format.|
|recipientAddress|String|The SMTP email address of the user that the message was addressed to.|
|senderAddress|String|The SMTP email address of the user the message was purportedly from.|
|size|Int32|The size of the message in bytes.|
|status|exchangeMessageTraceStatus|The delivery status of the message. The possible values are: `gettingStatus`, `pending`, `failed`, `delivered`, `expanded`, `quarantined`, `filteredAsSpam`.|
|subject|String|The subject line of the message.|
|toIP|String|The destination IP address. For outgoing messages, this value is the public IP address in the resolved MX record for the destination domain. For incoming messages to Exchange Online, this value is blank.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeMessageTrace"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeMessageTrace",
  "fromIP": "String",
  "id": "String (identifier)",
  "messageId": "String",
  "receivedDateTime": "String (timestamp)",
  "recipientAddress": "String",
  "senderAddress": "String",
  "size": "Int32",
  "status": "String",
  "subject": "String",
  "toIP": "String"
}
```