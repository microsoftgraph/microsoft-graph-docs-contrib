---
title: "Recipient Detail resource type"
description: Details about the recipient(s) as mentioned in the mail
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# analyzedEmailRecipientDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details about the recipient(s) as mentioned in the mail.

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

