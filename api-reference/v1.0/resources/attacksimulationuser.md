---
title: "attackSimulationUser resource type"
description: "Represents a user in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# attackSimulationUser resource type

Namespace: microsoft.graph

Represents a user in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user.|
|email|String|Email address of the user.|
|userId|String|This is the **id** property value of the [user](../resources/user.md) resource that represents the user in the Azure Active Directory tenant.|

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
  "displayName": "String",
  "email": "String",
  "userId": "String"
}
```

