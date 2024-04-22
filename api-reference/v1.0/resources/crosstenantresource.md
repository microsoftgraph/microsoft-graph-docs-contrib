---
title: "crossTenantResource resource type"
description: "Contains origin information, if available, about B2B collaboration users."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantResource resource type

Namespace: microsoft.graph

Contains origin information, if available, about B2B collaboration users. This information is typically populated for B2B collaboration users after invitation redemption in supported clouds, in [multitenant organizations](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview), and for target users of [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview).

This is an abstract type that's inherited by the [crossTenantSynchronizationResource](crosstenantsynchronizationresource.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|originId|String|ID of the original user in the origin or source Microsoft Entra tenant.|
|originTenantId|String|ID of the origin or source Microsoft Entra tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

