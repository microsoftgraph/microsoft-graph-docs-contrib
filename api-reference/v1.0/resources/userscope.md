---
title: "userScope resource type"
description: "Represents an individual user as a scope within policy bindings."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# userScope resource type

Namespace: microsoft.graph

Represents an individual user as a scope within policy bindings.

Inherits from [scopeBase](../resources/scopebase.md).

## Properties

| Property | Type   | Description                                                                                        |
| :------- | :----- | :------------------------------------------------------------------------------------------------- |
| identity | String | The identifier for the scope. This could be a user ID, or group ID. Inherited properties from [scopeBase](../resources/scopebase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userScope",
  "baseType": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.userScope",
  "identity": "String" 
}
```
