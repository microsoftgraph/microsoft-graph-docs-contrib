---
title: "attackSimulationUser resource type"
description: "User of a tenant in an attack simulation and training campaign."
author: "gopkr"
localization_priority: Normal
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

User of a tenant in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user|
|email|String|Email address of the user|
|userId|String|AAD object id of the user|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attackSimulationUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationUser",
  "userId": "String",
  "displayName": "String",
  "email": "String"
}
```

