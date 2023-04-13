---
title: "cloudPcManagementGroupAssignmentTarget resource type"
description: "Complex type that represents the assignment target group. Base type: CloudPcManagementAssignmentTarget"
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagementGroupAssignmentTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type that represents the assignment target group.
Inherits from [cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The ID of the target group for the assignment. |
|servicePlanId|String|The unique identifier for the service plan that indicates which size of the Cloud PC to provision for the user. Use a `null` value, when the **provisioningType** is `dedicated`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.cloudPcManagementAssignmentTarget",
  "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagementGroupAssignmentTarget",
  "groupId": "String",
  "servicePlanId": "String"
}
```
