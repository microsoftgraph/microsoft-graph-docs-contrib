---
title: "attackSimulationUser resource type"
description: "User in an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

User in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of a user.|
|email|String|Email address of a user.|
|userId|String|Id of a [user](../resources/user.md).|

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

