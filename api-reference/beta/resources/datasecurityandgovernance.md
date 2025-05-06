---
title: "dataSecurityAndGovernance resource type"
toc.title: "dataSecurityAndGovernance (preview)"
description: "Abstract base type representing the entry point for data security and governance features, scoped to the tenant."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing the entry point for data security and governance features, scoped to the tenant.

## Methods

| Method                                  | Return Type                                                                                     | Description                                                                  |
| :-------------------------------------- | :---------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------- |
|[tenantProtectionScopeContainer](../api/tenantprotectionscopecontainer-compute.md)| [policyTenantScope](../resources/policytenantscope.md) collection | Compute the tenant-wide data protection policies and actions, including user/group scoping. |
|[processContentAsync](../api/tenantdatasecurityandgovernance-processcontentasync.md)|  [processContentResponses](../resources/processcontentresponses.md) collection | Process content entries asynchronously against data protection policies. |

## Relationships
