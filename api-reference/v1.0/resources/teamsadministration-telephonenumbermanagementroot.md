---
title: "telephoneNumberManagementRoot resource type"
description: "Represents a collection of available telephone number management operations."
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# telephoneNumberManagementRoot resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of available telephone number management operations.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List number assignments](../api/teamsadministration-telephonenumbermanagementroot-list-numberassignments.md)|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) collection|Get a list of the [numberAssignment](../resources/teamsadministration-numberassignment.md) objects and their properties.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|numberAssignments|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) collection|Represents a collection of synchronous telephone number management operations.|
|operations|[microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) collection|Represents a collection of asynchronous telephone number management operations.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.telephoneNumberManagementRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.telephoneNumberManagementRoot"
}
```

