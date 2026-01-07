---
title: "tenantScope resource type"
description: "Represents the entire tenant as a scope within policy bindings."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entire tenant ('All users') as a scope within policy bindings.

Inherits from [scopeBase](../resources/scopebase.md).

## Properties

| Property | Type   | Description                                                                                        |
| :------- | :----- | :------------------------------------------------------------------------------------------------- |
| identity | String | The identifier for the scope. This could be a keyword like "All" for the tenant scope. Inherited properties from [scopeBase](../resources/scopebase.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantScope",
  "baseType": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantScope",
  "identity": "String"
}
```
