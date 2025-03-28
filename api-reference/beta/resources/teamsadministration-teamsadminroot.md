---
title: "teamsAdminRoot resource type"
description: "Represents a collection of user configurations"
author: "praspatil05"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAdminRoot resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of user configurations

Inherits from [entity](../resources/entity.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userConfigurations|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Represents the user's configurations information who has accounts homed on Microsoft Teams|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.teamsAdminRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.teamsAdminRoot"
}
```

