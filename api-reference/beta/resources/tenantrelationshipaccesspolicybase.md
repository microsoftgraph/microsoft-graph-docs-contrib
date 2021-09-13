---
title: "tenantRelationshipAccessPolicyBase resource type"
description: "The base type that defines a tenant relationship."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# tenantRelationshipAccessPolicyBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base type that defines a tenant relationship. This is an abstract type.

Inherits from [policyBase](../resources/policybase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|**TODO: Add Description**|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipAccessPolicyBase",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationshipAccessPolicyBase",
  "definition": [
    "String"
  ]
}
```
