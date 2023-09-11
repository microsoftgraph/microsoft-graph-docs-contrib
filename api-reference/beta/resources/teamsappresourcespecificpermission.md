---
title: "teamsAppResourceSpecificPermission resource type"
description: "Represents the resource-specific permission associated with a teamsApp."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppResourceSpecificPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resource-specific permission associated with a **teamsApp**.

For details, see [understanding resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionType|[teamsAppResourceSpecificPermissionType](../resources/teamsAppResourceSpecificPermission.md#teamsappresourcespecificpermissiontype-values)|The type of resource-specific permission.|
|permissionValue|String|The name of the resource-specific permission.|

## teamsAppResourceSpecificPermissionType values

| Member             | Description                                                                                               |
|:-------------------|:----------------------------------------------------------------------------------------------------------|
| delegated           | Indicates that the resource specific permission is of delegated type. |
| application           | Indicates that the resource specific permission is of application type. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppResourceSpecificPermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppResourceSpecificPermission",
  "permissionValue": "String",
  "permissionType": "String"
}
```

