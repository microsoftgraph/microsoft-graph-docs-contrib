---
title: "crossTenantUserSyncInbound resource type"
description: "Defines whether users can be synchronized from the partner tenant."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantUserSyncInbound resource type

Namespace: microsoft.graph

Defines whether users can be synchronized from the partner tenant.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isSyncAllowed|Boolean|Defines whether user objects should be synchronized from the partner tenant. `false` causes any current user synchronization from the source tenant to the target tenant to stop. This property has no impact on existing users who have already been synchronized.|

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
