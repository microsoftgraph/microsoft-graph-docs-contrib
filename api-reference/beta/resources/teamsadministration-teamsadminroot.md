---
title: "teamsAdminRoot resource type"
description: "Represents a collection of user configurations."
author: "praspatil05"
ms.date: 03/19/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAdminRoot resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of user configurations and telephone number administration methods.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userConfigurations|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Represents the configuration information of users who have accounts hosted on Microsoft Teams.|
|numberAssignments|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) collection|Represents collection of synchronous telephone number management operations.|
|operations|[microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) collection|Represents asynchronous telephone number management operation.|

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
