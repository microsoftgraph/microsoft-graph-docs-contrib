---
title: "sensitivityLabelAssignment resource type"
description: "Provides details about a sensitivity label assigned to a file in SharePoint or OneDrive for Business."
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# sensitivityLabelAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about a sensitivity label assigned to a [file](./driveitem.md) in SharePoint or OneDrive for Business.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentMethod|sensitivityLabelAssignmentMethod|Indicates whether the label assignment is done automatically, as a standard, or a privileged operation. The possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
|sensitivityLabelId|String|The unique identifier for the sensitivity label assigned to the file.|
|tenantId|String|The unique identifier for the tenant that hosts the file when this label is applied.|

### sensitivityLabelAssignmentMethod values

| Member             | Description                                    |
|:------------------ |:-----------------------------------------------|
| standard           | The assignment method for the label is standard.|
| privileged         | The assignment method for the label is privileged. Indicates that the label is applied manually by a user or by an admin.|
| auto               | Indicates that the label is applied automatically by the system due to a configured policy, such as default label or auto-classification of sensitive content.|
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|labels|[extractSensitivityLabelsResult](./extractsensitivitylabelsresult.md)|List of sensitivity labels assigned to a file.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sensitivityLabelAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sensitivityLabelAssignment",
  "assignmentMethod": "String",
  "sensitivityLabelId": "String",
  "tenantId": "String"
}
```

