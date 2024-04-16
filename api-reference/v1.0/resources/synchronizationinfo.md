---
title: "synchronizationInfo resource type"
description: "Contains information about how an object was synchronized. This information is only populated for objects that are synchronized using cross-tenant synchronization or multitenant organizations."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# synchronizationInfo resource type

Namespace: microsoft.graph

Contains information about how an object was synchronized. This information is only populated for objects that are synchronized using [cross-tenant synchronization](/entra/identity/multi-tenant-organizations/cross-tenant-synchronization-overview) or [multitenant organizations](/entra/identity/multi-tenant-organizations/multi-tenant-organization-overview).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationType|synchronizationInfoCreationType| Indicates how the object was synchronized. The possible values are: `tenantToTenantSync`, `unknownFutureValue`. `tenantToTenantSync` indicates that the object was created using cross-tenant synchronization or multitenant organizations.|

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

