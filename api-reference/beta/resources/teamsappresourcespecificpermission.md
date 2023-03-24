---
title: "teamsAppResourceSpecificPermission resource type"
description: "The resource-specific permission associated with a teamsApp."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppResourceSpecificPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The resource-specific permission associated with a teamsApp. Supported types for resource-specific permissions are 
- delegated 
- application 
<br>For more details, please see [understanding resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|permissionType|teamsAppResourceSpecificPermissionType|The type of permission.The possible values are: `delegated`, `application`.|
|permissionValue|String|The name of the resource-specific permission.|

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

