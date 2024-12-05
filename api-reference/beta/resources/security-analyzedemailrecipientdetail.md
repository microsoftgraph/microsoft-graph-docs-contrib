---
title: "Recipient Detail resource type"
description: Recipient Detail
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# analyzedEmailRecipientDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ccRecipients|String collection|**TODO: Add Description**|
|domainName|String|**TODO: Add Description**|

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

