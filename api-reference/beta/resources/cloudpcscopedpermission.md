---
title: "cloudPcScopedPermission resource type"
description: "Represents a scoped permission and related scope IDs. "
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcScopedPermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a scoped permission and related scope IDs.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|permission|String|	The operations allowed on scoped resources for the authenticated user. Example permission is `Microsoft.CloudPC/ProvisioningPolicies/Create`. |
|scopeIds|Collection(String)|The scope IDs of corresponding permission. Currently, it's Intune scope tag ID.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
