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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the user.|
|email|String|Email address of the user.|
|outOfOfficeDays|Int32 | Number of days the user is OOF during a simulation journey/course of a campaign.|
|userId|String|The **id** property value of the [user](../resources/user.md) resource that represents the user in the Azure Active Directory tenant.|

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
  "outOfOfficeDays": "Int",
  "userId": "String"
}
```

