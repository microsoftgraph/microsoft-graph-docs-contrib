---
title: "DataSecurityAndGovernance resource type"
toc.title: "Data security and governance (preview)"
description: "Abstract base type representing the entry point for data security and governance features, scoped either to a user or the tenant."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# DataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entry point for data security and governance features, scoped to the tenant.

## Methods

| Method                                  | Return Type                                                                                     | Description                                                                  |
| :-------------------------------------- | :---------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------- |
|[Compute Protection Scopes](../api/userdatasecurityandgovernance-post-protectionscopes.md)| [policyTenantScope](../resources/policytenantscope.md) collection | Compute the tenant-wide data protection policies and actions, including user/group scoping. |
|[Process Content Batch](../api/tenantdatasecurityandgovernance-processcontentasync.md)|  [processContentResponses](../resources/processcontentresponses.md) collection | Process a batch of content entries asynchronously against data protection policies. |

## Relationships

| Relationship      | Type                                                                                 | Description                                                                                  |
| :---------------- | :----------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------- |
| sensitivityLabels | [sensitivityLabel](../resources/security-sensitivitylabel.md) collection | Provides access to the sensitivity labels defined within the tenant, accessible from both user and tenant scopes. |
