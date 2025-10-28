---
title: "identityInput resource type"
description: "Represents a person, group, or other recipient used as input to resolve identities during creation."
author: "spgraph-docs-team"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 10/09/2025
---

# identityInput resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a person, group, or other recipient used as input to resolve identities during creation.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|alias|String|The alias of the identity.|
|email|String|The email of the identity.|
|objectId|String|The unique object ID assigned to the identity in Microsoft Entra ID.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityInput"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityInput",
  "alias": "String",
  "email": "String",
  "objectId": "String"
}
```
