---
title: "approvalSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# approvalSettings resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalMode|String|**TODO: Add Description**|
|approvalStages|[unifiedApprovalStage](../resources/unifiedapprovalstage.md) collection|**TODO: Add Description**|
|isApprovalRequired|Boolean|**TODO: Add Description**|
|isApprovalRequiredForExtension|Boolean|**TODO: Add Description**|
|isRequestorJustificationRequired|Boolean|**TODO: Add Description**|

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
      "@odata.type": "microsoft.graph.unifiedApprovalStage"
    }
  ]
}
```

