---
title: "synchronizationInfo resource type"
description: "Contains information about how a user was synchronized."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# synchronizationInfo resource type

Namespace: microsoft.graph

Contains information about how a user was synchronized. This information is populated for B2B collaboration target users of [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationType|synchronizationInfoCreationType| Indicates how the user was synchronized. The possible values are: `tenantToTenantSync`, `unknownFutureValue`. `tenantToTenantSync` indicates that the user was created using cross-tenant synchronization.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationInfo",
  "creationType": "String"
}
```

