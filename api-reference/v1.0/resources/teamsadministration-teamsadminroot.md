---
title: "teamsAdminRoot resource type"
description: "Represents a collection of user configurations."
author: "praspatil05"
ms.date: 12/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAdminRoot resource type

Namespace: microsoft.graph.teamsAdministration

Represents a collection of user configurations and telephone number administration methods.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Represents a navigation property to the Teams policy assignment object.|
|userConfigurations|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Represents the configuration information of users who have accounts hosted on Microsoft Teams|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsAdminRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsAdminRoot",
  "id": "String (identifier)"
}
```

