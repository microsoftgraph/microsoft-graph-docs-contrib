---
title: "analyzedEmailRecipientDetail resource type"
description: "Details about the recipient or recipients as mentioned in the email."
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# analyzedEmailRecipientDetail resource type

Namespace: microsoft.graph.security


Details about the recipient or recipients as mentioned in the email. It's returned in the **recipientDetail** property of [analyzedEmail](../resources/security-analyzedemail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ccRecipients|String collection|Recipient address in the cc field.|
|domainName|String|Domain name of the recipient.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailRecipientDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailRecipientDetail",
  "domainName": "String",
  "ccRecipients": [
    "String"
  ]
}
```

