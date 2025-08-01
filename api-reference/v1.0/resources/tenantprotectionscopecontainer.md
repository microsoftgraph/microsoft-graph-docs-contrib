---
title: "tenantProtectionScopeContainer resource type"
description: "Container for tenant-wide Microsoft Purview protection scope computation actions."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantProtectionScopeContainer resource type

Namespace: microsoft.graph

Container for tenant-wide  Microsoft Purview protection scope computation actions.

## Methods

| Method                                          | Return Type                                                                                     | Description                                                           |
| :---------------------------------------------- | :---------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| [Compute protection scopes](../api/tenantprotectionscopecontainer-compute.md) | [policyTenantScope](../resources/policytenantscope.md) collection | Compute the data protection policies applicable across the tenant.    |

## Properties

None. 

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantProtectionScopeContainer",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantProtectionScopeContainer"
}
```
