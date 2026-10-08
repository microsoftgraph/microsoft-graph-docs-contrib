---
title: "contentSensitivityLabelAssignment resource type"
description: "Represents the sensitivity label assignment for plan."
author: "ankku"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# contentSensitivityLabelAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sensitivity label assignment for plan. This resource type is used to apply Microsoft Information Protection (MIP) sensitivity labels to plans in Microsoft Planner, enabling data governance and access control based on organizational policies.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentMethod|sensitivityLabelAssignmentMethod|The method used to assign the sensitivity label. The possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
|justificationText|String|The justification text provided when you change the sensitivity label. Used during label downgrade to document the reason. Optional.|
|sensitivityLabelId|String|The unique identifier of the sensitivity label applied to the content. This ID corresponds to a label defined in the Microsoft Information Protection policy.|
|tenantId|String|The unique identifier of the tenant where the sensitivity label is defined and applied.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.contentSensitivityLabelAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentSensitivityLabelAssignment",
  "assignmentMethod": "String",
  "justificationText": "String",
  "sensitivityLabelId": "String",
  "tenantId": "String"
}
```
