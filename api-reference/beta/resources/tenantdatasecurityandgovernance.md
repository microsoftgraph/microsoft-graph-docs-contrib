---
title: "tenantDataSecurityAndGovernance resource type (preview)"
description: "Represents the entry point for data security and governance features applicable across the entire tenant."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantDataSecurityAndGovernance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for data security and governance features applicable across the entire tenant. 

## Methods

| Method                                          | Return Type                                                                                                 | Description                                                                                 |
| :---------------------------------------------- | :---------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------ |
| [Compute protection scopes](../api/tenantprotectionscopecontainer-compute.md) | [policyTenantScope](../resources/policytenantscope.md) collection      | Compute the tenant-wide data protection policies, including user/group scoping.             |
| [Process content async](../api/tenantdatasecurityandgovernance-processcontentasync.md) | [processContentResponses](../resources/processcontentresponses.md) collection | Process a batch of content entries asynchronously against data protection policies.           |

## Properties

None.

## Relationships

| Relationship     | Type                                                                                                           | Description                                                                      |
| :--------------- | :------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------- |
| protectionScopes | [tenantProtectionScopeContainer](../resources/tenantprotectionscopecontainer.md) | Container for actions related to computing tenant-wide data protection scopes. |


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantDataSecurityAndGovernance",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantDataSecurityAndGovernance"
}
```
