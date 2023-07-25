---
title: "userRegistrationMethodCount resource type"
description: "Represents the number of users registered for an authentication method."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
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

The following is a JSON representation of the resource.

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
