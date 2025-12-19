---
title: "teamsPolicyUserAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# teamsPolicyUserAssignment resource type

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamsadministration-teamspolicyassignment-list-userassignments.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|Get a list of the teamsPolicyUserAssignment objects and their properties.|
|[Create](../api/teamsadministration-teamspolicyassignment-post-userassignments.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md)|Create a new teamsPolicyUserAssignment object.|
|[Get](../api/teamsadministration-teamspolicyuserassignment-get.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) object.|
|[Update](../api/teamsadministration-teamspolicyuserassignment-update.md)|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md)|Update the properties of a teamsPolicyUserAssignment object.|
|[Delete](../api/teamsadministration-teamspolicyassignment-delete-userassignments.md)|None|Delete a teamsPolicyUserAssignment object.|
|[assign](../api/teamsadministration-teamspolicyuserassignment-assign.md)|None|**TODO: Add Description**|
|[unassign](../api/teamsadministration-teamspolicyuserassignment-unassign.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|policyId|String|**TODO: Add Description**|
|policyType|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment",
  "id": "String (identifier)",
  "userId": "String",
  "policyType": "String",
  "policyId": "String"
}
```

