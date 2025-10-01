---
title: "teamsAdminRoot resource type"
description: "Represents a collection of user configurations and telephone number administration methods."
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

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|numberAssignments|[microsoft.graph.teamsAdministration.numberAssignment](../resources/teamsadministration-numberassignment.md) collection|Represents a collection of synchronous telephone number management operations.|
|operations|[microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) collection|Represents asynchronous telephone number management operations.|
|telephoneNumberManagement|[microsoft.graph.teamsAdministration.telephoneNumberManagementRoot](../resources/teamsadministration-telephonenumbermanagementroot.md)|Represents a collection of available telephone number management operations.|
|policy|[microsoft.graph.teamsAdministration.teamsPolicyAssignment](../resources/teamsadministration-teamspolicyassignment.md)|Represents a navigation property to the Teams policy assignment object.|
|userConfigurations|[microsoft.graph.teamsAdministration.teamsUserConfiguration](../resources/teamsadministration-teamsuserconfiguration.md) collection|Represents the configuration information of users who have accounts hosted on Microsoft Teams.|

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
