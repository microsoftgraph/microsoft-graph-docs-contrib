---
title: "analyzedEmailSenderDetail resource type"
description: Sender details of an email. 
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.prod: security
doc_type: resourcePageType
---

# analyzedEmailSenderDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Sender details of an email.  

## Properties
|Property|Type|Description|
|:---|:---|:---|
|fromAddress|String|Sender email address in the MAIL FROM header, also known as the envelope sender or the P1 sender. |
|ipv4|String|IPv4 address of the last detected mail server that relayed the message.  |
|mailFromAddress|String|Sender email address in the FROM header, which is visible to email recipients on their email clients. Also known as P2 sender.|

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
  "ipv4": "String"
}
```

