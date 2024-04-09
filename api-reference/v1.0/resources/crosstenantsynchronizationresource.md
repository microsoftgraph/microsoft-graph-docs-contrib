---
title: "crossTenantSynchronizationResource resource type"
description: "Contains origin and synchronization information about a synchronized object from a source Microsoft Entra tenant."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantSynchronizationResource resource type

Namespace: microsoft.graph

Contains origin and synchronization information about a synchronized object from a source Microsoft Entra tenant. This information is only populated for objects that are synchronized using [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview) or [multitenant organizations](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview).

Inherits from [crossTenantResource](../resources/crosstenantresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|originId|String|ID of the original object in the source Microsoft Entra tenant the object was synchronized from. Inherited from [crossTenantResource](../resources/crosstenantresource.md).|
|originTenantId|String|ID of the source Microsoft Entra tenant. Inherited from [crossTenantResource](../resources/crosstenantresource.md).|
|synchronizationInfo|[synchronizationInfo](../resources/synchronizationinfo.md)|Contains information about how the object was synchronized.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantSynchronizationResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantSynchronizationResource",
  "originId": "String",
  "originTenantId": "String",
  "synchronizationInfo": {
    "@odata.type": "microsoft.graph.synchronizationInfo"
  }
}
```

