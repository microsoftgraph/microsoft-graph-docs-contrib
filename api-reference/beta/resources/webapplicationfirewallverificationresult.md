---
title: "webApplicationFirewallVerificationResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# webApplicationFirewallVerificationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[genericError](../resources/genericerror.md) collection|**TODO: Add Description**|
|status|webApplicationFirewallVerificationStatus|**TODO: Add Description**. The possible values are: `success`, `warning`, `failure`, `unknownFutureValue`.|
|verifiedOnDateTime|DateTimeOffset|**TODO: Add Description**|
|warnings|[genericError](../resources/genericerror.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationResult",
  "status": "String",
  "verifiedOnDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ],
  "warnings": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ]
}
```

