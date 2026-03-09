---
title: "exchangeMessageTrace resource type"
toc.title: "Message trace"
description: "Represents the trace information for an email message as it passes through the Exchange Online organization"
author: "Huajian-MSIT"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exchangeMessageTrace resource type

Namespace: microsoft.graph

Represents the trace information for an email message as it passes through the Exchange Online organization. Message trace enables tenant administrators to track the lifecycle of an email, determine its delivery status—whether delivered, pending, failed, or quarantined—and understand the actions applied to it.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List message traces](../api/messagetracingroot-list-messagetraces.md)|[exchangeMessageTrace](../resources/exchangemessagetrace.md) collection|Get a list of [exchangeMessageTrace](../resources/exchangemessagetrace.md) objects.|
|[Get details by recipient](../api/exchangemessagetrace-getdetailsbyrecipient.md)|[exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) collection|Get a list of [exchangeMessageTraceDetail](../resources/exchangemessagetracedetail.md) objects filtered on the recipient.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|fromIP|String|The source IP address. For incoming messages, this value is the public IP address of the SMTP email server that sent the message. <br/><br/>Supports `$filter` (`eq`).|
|id|String|The unique identifier for the message trace. <br/><br/>Supports `$filter` (`eq`).|
|messageId|String|The Message-ID header field of the message. The format of the Message-ID depends on the messaging server that sent the message. <br/><br/>Supports `$filter` (`eq`).|
|receivedDateTime|DateTimeOffset|The date and time when the message was received by Exchange Online. The timestamp is in UTC format. <br/><br/>Supports `$filter` (`ge`, `le`).|
|recipientAddress|String|The SMTP email address of the user that the message was addressed to. <br/><br/>Supports `$filter` (`eq`).|
|senderAddress|String|The SMTP email address of the user the message was purportedly from. <br/><br/>Supports `$filter` (`eq`).|
|size|Int32|The size of the message in bytes.|
|status|exchangeMessageTraceStatus|The delivery status of the message. The possible values are: `gettingStatus`, `pending`, `failed`, `delivered`, `expanded`, `quarantined`, `filteredAsSpam`, `unknownFutureValue`. <br/><br/>Supports `$filter` (`eq`).|
|subject|String|The subject line of the message. <br/><br/>Supports `$filter` (`contains`, `startsWith`, `endsWith`).|
|toIP|String|The destination IP address. For outgoing messages, this value is the public IP address in the resolved MX record for the destination domain. For incoming messages to Exchange Online, this value is blank. <br/><br/>Supports `$filter` (`eq`).|

## Prerequisites
 
Before you can use the [List message traces](../api/messagetracingroot-list-messagetraces.md) or [Get details by recipient](../api/exchangemessagetrace-getdetailsbyrecipient.md) APIs, you must provision a service principal in your tenant for the Microsoft application with the following application (client) ID: `8bd644d1-64a1-4d4b-ae52-2e0cbf64e373`. Provisioning the service principal creates a local representation of the application in your tenant and enables authentication and authorization for these APIs.
 
To provision the service principal, you can follow these steps:
 
1. Connect to Microsoft Graph PowerShell:
    ```PowerShell
    Connect-MgGraph -Scopes "Application.ReadWrite.All"
    ```
2. Run the following command to provision the service principal:
    ```PowerShell
    New-MgServicePrincipal -AppId 8bd644d1-64a1-4d4b-ae52-2e0cbf64e373

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