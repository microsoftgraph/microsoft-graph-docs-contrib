---
title: "analyzedEmailSenderDetail resource type"
description: Represents the sender details of an email. 
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# analyzedEmailSenderDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sender details of an email. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of sender from address.|
|domainCreationDateTime|DateTimeOffset|Date and time of creation of the sender domain.|
|domainName|String|Registered name of the domain.|
|domainOwner|String|Owner of the domain.|
|fromAddress|String|The sender email address in the mail From header, also known as the envelope sender or the P1 sender.|
|ipv4|String|The IPv4 address of the last detected mail server that relayed the message.|
|location|String|Location of the domain.|
|mailFromAddress|String|The sender email address in the From header, which is visible to email recipients on their email clients. Also known as P2 sender.|
|mailFromDomainName|String|Domain name of sender mail from address.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailSenderDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailSenderDetail",
  "mailFromAddress": "String",
  "fromAddress": "String",
  "ipv4": "String",
  "displayName": "String",
  "domainName": "String",
  "domainCreationDateTime": "String (timestamp)",
  "domainOwner": "String",
  "mailFromDomainName": "String",
  "location": "String"
}
```

