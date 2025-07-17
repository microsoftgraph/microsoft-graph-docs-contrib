---
title: "userRegistrationMethodCount resource type"
description: "Represents the number of users registered for an authentication method."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userRegistrationMethodCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the number of users registered for an authentication method.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|String|Name of the authentication method.|
|userCount|Int64|Number of users registered.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationMethodCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationMethodCount",
  "authenticationMethod": "String",
  "userCount": "Int64"
}
```
