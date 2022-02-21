---
title: "sensitivityLabelAssignment resource type"
description: "provides details of sensitivityLabel assigned to a file"
author: "jaLuthra"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# sensitivityLabelAssignment resource type

Namespace: microsoft.graph

The **sensitivityLabelAssignment** resource type provides details of sensitivityLabel assigned to a file in SharePoint or OneDrive for Business.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentMethod|sensitivityLabelAssignmentMethod|The assignment method of the label on the document. Whether the assignment of the label was done automatically, standard or as a privileged operation.The possible values are: `standard`, `privileged`, `auto`, `unknownFutureValue`.|
|sensitivityLabelId|String|Id of the sensitivityLabel assigned to the file.|
|tenantId|String|Indicates id of the tenant hosting the file during application of this label.|

### sensitivityLabelAssignmentMethod enumeration

| Member             | Description
|:------------------ |:-----------------------------------------------
| standard           | Label assignment method is standard.
| privileged         | Label assignment method is privileged. This indicates that label was applied manually by user or by an admin.
| auto               | Label assignment method is automatic. This indicates that label was applied automatically by system due to a configured policy like default label or auto-classification of sensitive content etc.
| unknownFutureValue | Marker value for future compatibility.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|labels|[extractSensitivityLabelsResult](./extractsensitivitylabelsresult.md)|List of sensitivityLabel assigned to a given file.|

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
  "sensitivityLabelId": "String",
  "tenantId": "String",
  "assignmentMethod": "String"
}
```

