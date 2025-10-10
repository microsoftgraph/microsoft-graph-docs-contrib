---
title: "webApplicationFirewallDnsConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# webApplicationFirewallDnsConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isDomainVerified|Boolean|**TODO: Add Description**|
|isProxied|Boolean|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|recordType|webApplicationFirewallDnsRecordType|**TODO: Add Description**. The possible values are: `cname`, `unknownFutureValue`.|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallDnsConfiguration",
  "name": "String",
  "isProxied": "Boolean",
  "recordType": "String",
  "value": "String",
  "isDomainVerified": "Boolean"
}
```

