---
title: "crossTenantResource resource type"
description: "Contains origin information about a synchronized object from a source Microsoft Entra tenant."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantResource resource type

Namespace: microsoft.graph

Contains origin information about a synchronized object from a source Microsoft Entra tenant. This information is only populated for objects that are synchronized using [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview) or [multitenant organizations](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview).

This is an abstract type that's inherited by the [crossTenantSynchronizationResource](crosstenantsynchronizationresource.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|originId|String|ID of the original object in the source Microsoft Entra tenant the object was synchronized from.|
|originTenantId|String|ID of the source Microsoft Entra tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantResource",
  "originId": "String",
  "originTenantId": "String"
}
```

