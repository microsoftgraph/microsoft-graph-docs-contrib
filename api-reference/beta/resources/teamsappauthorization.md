---
title: "teamsAppAuthorization resource type"
description: "The authorization details of a teamsApp."
author: "sweta-thapliyal"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppAuthorization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The authorization details of a [teamsApp](teamsapp.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|requiredPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|Set of permissions required by the [teamsApp](teamsapp.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppAuthorization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppAuthorization",
  "requiredPermissionSet": {
    "@odata.type": "microsoft.graph.teamsAppPermissionSet"
  }
}
```

