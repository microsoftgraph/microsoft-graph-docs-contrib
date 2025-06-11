---
title: "dataSecurityAndGovernance resource type"
description: "Abstract base type representing the entry point for data security and governance features, scoped to the tenant."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataSecurityAndGovernance resource type

Namespace: microsoft.graph

Abstract base type representing the entry point for data security and governance features, scoped to the tenant.

## Methods

| Method                                  | Return Type                                                                                     | Description                                                                  |
| :-------------------------------------- | :---------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------- |
|[Compute protection scopes](../api/tenantprotectionscopecontainer-compute.md)| [policyTenantScope](../resources/policytenantscope.md) collection | Compute the tenant-wide data protection policies and actions, including user/group scoping. |
|[Process content async](../api/tenantdatasecurityandgovernance-processcontentasync.md)|  [processContentResponses](../resources/processcontentresponses.md) collection | Process content entries asynchronously against data protection policies. |

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.dataSecurityAndGovernance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSecurityAndGovernance"
}
```
