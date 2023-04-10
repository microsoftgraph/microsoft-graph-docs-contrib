---
title: "teamsAppPermissionSet resource type"
description: "Set of Resource specific permissions."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppPermissionSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set of required/granted permissions that can be associated with a Teams app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|resourceSpecificPermissions|[teamsAppResourceSpecificPermission](../resources/teamsappresourcespecificpermission.md) collection|A collection of resource-specific permissions.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppPermissionSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppPermissionSet",
  "resourceSpecificPermissions": [
    {
      "@odata.type": "microsoft.graph.teamsAppResourceSpecificPermission"
    }
  ]
}
```

