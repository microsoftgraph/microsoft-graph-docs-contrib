---
title: "crossTenantGroupSyncInbound resource type"
description: "Defines whether groups can be synchronized from a partner tenant."
author: "spasham"
ms.date: 10/28/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantGroupSyncInbound resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines whether groups can be synchronized from a partner tenant, as defined in the **groupSyncInbound** property of [crossTenantIdentitySyncPolicyPartner](../resources/crossTenantIdentitySyncPolicyPartner.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSyncAllowed|Boolean|Defines whether group objects should be synchronized from the partner tenant. `false` stops any current group synchronization from the source tenant to the target tenant. This property has no impact on existing groups that were synchronized.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantGroupSyncInbound"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantGroupSyncInbound",
  "isSyncAllowed": "Boolean"
}
```

