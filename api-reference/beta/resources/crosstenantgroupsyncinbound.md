---
title: "crossTenantGroupSyncInbound resource type"
description: "Defines whether groups can be synchronized from the partner tenant."
author: "spasham"
ms.date: 10/28/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# crossTenantGroupSyncInbound resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSyncAllowed|Boolean|Defines whether group objects should be synchronized from the partner tenant. `false` causes any current group synchronization from the source tenant to the target tenant to stop. This property has no impact on existing groups that have already been synchronized.|

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