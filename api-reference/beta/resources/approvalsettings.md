---
title: "approvalSettings complex type"
description: "The settings for approval as defined in a role management policy rule."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# approvalSettings complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings for approval as defined in a role management policy rule.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|approvalMode|String|One of `SingleStage`, `Serial`, `Parallel`, `NoApproval` (default). `NoApproval` is used when `isApprovalRequired` is `false`.|
|approvalStages|[approvalStage](../resources/approvalstage.md) collection|If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.|
|isApprovalRequired|Boolean|Indicates whether approval is required for requests in this policy.|
|isApprovalRequiredForExtension|Boolean|Indicates whether approval is required for a user to extend their assignment.|
|isRequestorJustificationRequired|Boolean|Indicates whether the requestor is required to supply a justification in their request.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.approvalSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalSettings",
  "isApprovalRequired": "Boolean",
  "isApprovalRequiredForExtension": "Boolean",
  "isRequestorJustificationRequired": "Boolean",
  "approvalMode": "String",
  "approvalStages": [
    {
      "@odata.type": "microsoft.graph.approvalStage"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "approvalSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


