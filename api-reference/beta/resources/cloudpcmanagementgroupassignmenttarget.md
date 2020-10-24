---
title: "cloudPcManagementGroupAssignmentTarget resource type"
description: "Complex type that represents the assignment target group. Base type: CloudPcManagementAssignmentTarget"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcManagementGroupAssignmentTarget resource type

Namespace: microsoft.graph

Complex type that represents the assignment target group. Base type: CloudPcManagementAssignmentTarget

Inherits from [cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The id of the assignment's target group|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagementGroupAssignmentTarget",
  "groupId": "String"
}
```
