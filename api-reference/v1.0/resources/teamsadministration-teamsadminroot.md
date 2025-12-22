---
title: "teamsAdminRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# teamsAdminRoot resource type

Namespace: microsoft.graph.teamsAdministration



**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/intune-admin-list-teams.md)|[microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md) collection|Get a list of the teamsAdminRoot objects and their properties.|
|[Create](../api/intune-admin-post-teams.md)|[microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md)|Create a new teamsAdminRoot object.|
|[Get](../api/teamsadministration-teamsadminroot-get.md)|[microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md) object.|
|[Update](../api/teamsadministration-teamsadminroot-update.md)|[microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md)|Update the properties of a teamsAdminRoot object.|
|[Delete](../api/intune-admin-delete-teams.md)|None|Delete a teamsAdminRoot object.|
|[List teamsPolicyAssignment](../api/teamsadministration-teamsadminroot-list-policy.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md) collection|**TODO: Add a useful description.**|
|[Create teamsPolicyAssignment](../api/teamsadministration-teamsadminroot-post-policy.md)|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Create a new teamsPolicyAssignment object.|
|[List userConfigurations](../api/teamsadministration-teamsadminroot-list-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|**TODO: Add a useful description.**|
|[Create teamsUserConfiguration](../api/teamsadministration-teamsadminroot-post-userconfigurations.md)|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md)|Create a new teamsUserConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|**TODO: Add Description**|
|userConfigurations|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsAdminRoot",
  "baseType": "microsoft.graph.entity",
  "openType": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsAdminRoot",
  "id": "String (identifier)"
}
```

