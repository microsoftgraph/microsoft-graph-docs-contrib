---
title: "cloudPcScopedPermission resource type"
description: "The scoped permission and related scope IDs. "
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcScopedPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The scoped permission and related scope IDs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|permission|String|The authenticated users allowed operations on scoped resources .|
|scopeIds|Collection(String)|The scope IDs of corresponding permission. currently, this is Intune scope tag ID.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcScopedPermission"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcScopedPermission",
  "permission": "String",
  "scopeIds": "Collection(String)"
}
```
