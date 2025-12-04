---
title: "policyAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/03/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# policyAssignment resource type

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentType|microsoft.graph.teamsAdministration.assignmentType|**TODO: Add Description**. The possible values are: `direct`, `group`, `unknownFutureValue`.|
|displayName|String|**TODO: Add Description**|
|groupId|String|**TODO: Add Description**|
|policyId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAdministration.policyAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.policyAssignment",
  "policyId": "String",
  "displayName": "String",
  "assignmentType": "String",
  "groupId": "String"
}
```

