---
title: "analyzedEmailAuthenticationDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# analyzedEmailAuthenticationDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compositeAuthentication|String|**TODO: Add Description**|
|dkim|String|**TODO: Add Description**|
|dmarc|String|**TODO: Add Description**|
|senderPolicyFramework|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.analyzedEmailAuthenticationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.analyzedEmailAuthenticationDetail",
  "dmarc": "String",
  "dkim": "String",
  "senderPolicyFramework": "String",
  "compositeAuthentication": "String"
}
```

