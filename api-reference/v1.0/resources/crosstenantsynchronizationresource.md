---
title: "crossTenantSynchronizationResource resource type"
description: "Contains origin and synchronization information, if available, about external users."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantSynchronizationResource resource type

Namespace: microsoft.graph

Contains origin and synchronization information, if available, about external users. This information is typically populated for external users after invitation redemption in supported clouds, in [multitenant organizations](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview), and for target users of [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview).

Inherits from [crossTenantResource](../resources/crosstenantresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|originId|String|ID of the original user in the source Microsoft Entra tenant the user was synchronized from. Inherited from [crossTenantResource](../resources/crosstenantresource.md).|
|originTenantId|String|ID of the source Microsoft Entra tenant. Inherited from [crossTenantResource](../resources/crosstenantresource.md).|
|synchronizationInfo|[synchronizationInfo](../resources/synchronizationinfo.md)|Contains information about how the user was synchronized.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

