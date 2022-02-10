---
title: "delegatedAdminAccessContainer resource type"
description: "An admin access container that can be assigned roles via an access assignment."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# delegatedAdminAccessContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An admin access container that can be assigned roles via an access assignment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessContainerId|String|The identifier of the access container (e.g., security group). For "securityGroup" access containers, this must be a valid ID of an AAD security group in the partner tenant.|
|accessContainerType|String|The type of access container (e.g., security group) that will be assigned one or more roles approved for the associated relationship.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessContainer",
  "accessContainerId": "String",
  "accessContainerType": "String"
}
```

