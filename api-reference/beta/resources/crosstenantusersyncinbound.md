---
title: "crossTenantUserSyncInbound resource type"
description: "Defines the inbound user synchronization for partner configurations within cross-tenant access settings."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantUserSyncInbound resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the inbound user synchronization for partner configurations within cross-tenant access settings.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSyncAllowed|Boolean|Defines whether user objects should be synchronized. If set to false, any current user synchronization from the source tenant to the target tenant will stop. Also, user objects that already been synchronized will not be cleaned up.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantUserSyncInbound",
  "isSyncAllowed": "Boolean"
}
```

