---
title: "teamsPolicyAssignment resource type"
description: "Represents the root entity for managing Teams policy assignments."
author: "praspatil05"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsPolicyAssignment resource type

Namespace: microsoft.graph.teamsAdministration



Represents the root entity for managing Teams policy assignments. It provides access to user policy assignments and supports the resolution of policyId.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getPolicyId](../api/teamsadministration-teamspolicyassignment-getpolicyid.md)|[microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) collection|Get the policy ID for a given policy name and policy type within Teams administration.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userAssignments|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|Navigation property to the collection of user policy assignments.|

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

