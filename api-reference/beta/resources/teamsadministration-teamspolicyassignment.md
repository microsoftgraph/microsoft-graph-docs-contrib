---
title: "teamsPolicyAssignment resource type"
description: "Represents the root entity for managing Teams policy assignments."
author: "praspatil05"
ms.date: 08/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsPolicyAssignment resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root entity for managing Teams policy assignments. It provides access to user policy assignments and supports the resolution of policy IDs.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get policy ID](../api/teamsadministration-teamspolicyassignment-getpolicyid.md)|[microsoft.graph.teamsAdministration.policyIdentifierDetail](../resources/teamsadministration-policyidentifierdetail.md) collection|Get the [policy ID](../resources/teamsadministration-policyidentifierdetail.md) for a given policy name and policy type within Teams administration.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userAssignments|[microsoft.graph.teamsAdministration.teamsPolicyUserAssignment](../resources/teamsadministration-teamspolicyuserassignment.md) collection|The collection of user policy assignments.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsPolicyAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsPolicyAssignment"
}
```

