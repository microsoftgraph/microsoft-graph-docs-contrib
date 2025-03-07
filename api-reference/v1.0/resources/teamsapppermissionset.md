---
title: "teamsAppPermissionSet resource type"
description: "Set of required/granted permissions that can be associated with a Teams app."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamsAppPermissionSet resource type

Namespace: microsoft.graph


Set of required/granted permissions that can be associated with a Teams app.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|resourceSpecificPermissions|[teamsAppResourceSpecificPermission](../resources/teamsappresourcespecificpermission.md) collection|A collection of resource-specific permissions.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
