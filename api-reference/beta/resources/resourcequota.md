---
title: "resourceQuota resource type"
description: "Represents a quota configuration for a resource type in a Microsoft Entra organization."
author: "marcotuliorr"
ms.date: 08/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---

# resourceQuota resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a quota configuration for a resource type in a Microsoft Entra organization. Configure this object through the **resourceQuotas** property of an [organization](../resources/organization.md) resource.


## Properties

|Property|Type|Description|
|:---|:---|:---|
|maxPercentage|Int32|The maximum percentage of the organization's `directorySizeQuota.total` that this resource type can consume. The value must be between `0` and `100`. A value of `0` blocks creation of new resources of this type. If omitted for supported resource types, the default is `80`.|
|resourceType|[resourceQuotaType](../resources/enums.md#resourcequotatype-values)|The resource type to which the quota applies. Each value must be unique within the organization's **resourceQuotas** collection. The possible values are: `agentIdentityBlueprint`, `agentIdentity`, `managedIdentity`, `unknownFutureValue`.|
|total|Int32|The effective maximum number of resources allowed, calculated from `directorySizeQuota.total` and **maxPercentage**. This value is read-only and changes when the organization's overall quota changes.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourceQuota"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.resourceQuota",
  "resourceType": "String",
  "maxPercentage": "Int32",
  "total": "Int32"
}
```

