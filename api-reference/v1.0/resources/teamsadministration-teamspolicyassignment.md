---
title: "teamsPolicyAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# teamsPolicyAssignment resource type

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-teamsadminroot-list-policy.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md) collection|Get a list of the teamsPolicyAssignment objects and their properties.|
|[Create](../api/teamsadministration-teamsadminroot-post-policy.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Create a new teamsPolicyAssignment object.|
|[Get](../api/teamsadministration-teamspolicyassignment-get.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md) object.|
|[Update](../api/teamsadministration-teamspolicyassignment-update.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Update the properties of a teamsPolicyAssignment object.|
|[Delete](../api/teamsadministration-teamsadminroot-delete-policy.md)|None|Delete a teamsPolicyAssignment object.|
|[getPolicyId](../api/teamsadministration-teamspolicyassignment-getpolicyid.md)|[microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) collection|**TODO: Add Description**|
|[List userAssignments](../api/teamsadministration-teamspolicyassignment-list-userassignments.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|**TODO: Add a useful description.**|
|[Create teamsPolicyUserAssignment](../api/teamsadministration-teamspolicyassignment-post-userassignments.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md)|Create a new teamsPolicyUserAssignment object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userAssignments|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsPolicyAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyAssignment",
  "id": "String (identifier)"
}
```

