---
title: "approvalSettings resource type"
description: "The settings for approval as defined in a role management policy rule."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# approvalSettings resource type

Namespace: microsoft.graph

The settings for approval as defined in a role management policy rule.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalMode|String|One of `SingleStage`, `Serial`, `Parallel`, `NoApproval` (default). `NoApproval` is used when `isApprovalRequired` is `false`.|
|approvalStages|[unifiedApprovalStage](../resources/unifiedapprovalstage.md) collection|If approval is required, the one or two elements of this collection define each of the stages of approval. An empty array if no approval is required.|
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
  "approvalMode": "String",
  "approvalStages": [
    {
      "@odata.type": "microsoft.graph.unifiedApprovalStage"
    }],
  "isApprovalRequired": "Boolean",
  "isApprovalRequiredForExtension": "Boolean",
  "isRequestorJustificationRequired": "Boolean"
}
```

