---
title: "policyBinding resource type"
toc.title: "policyBinding resource type (preview)"
description: "Defines the user/group inclusions and exclusions for a tenant-level policy scope."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyBinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the user/group inclusions and exclusions for a tenant-level policy scope.

## Properties

| Property   | Type                                                                             | Description                                                                                                |
| :--------- | :------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------- |
| exclusions | [scopeBase](../resources/scopebase.md) collection | Specifies the users or groups to be explicitly excluded from this policy scope. Can be null or empty.         |
| inclusions | [scopeBase](../resources/scopebase.md) collection | Specifies the users or groups to be included in this policy scope. Often set to `tenantScope` for "All users". |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyBinding",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyBinding",
  "inclusions": [
    { "@odata.type": "microsoft.graph.scopeBase" }
    // e.g., { "@odata.type": "#microsoft.graph.tenantScope", "identity": "All" }
    // e.g., { "@odata.type": "#microsoft.graph.groupScope", "identity": "group-guid" }
  ],
  "exclusions": [
    { "@odata.type": "microsoft.graph.scopeBase" }
    // e.g., { "@odata.type": "#microsoft.graph.userScope", "identity": "user-guid" }
    // e.g., { "@odata.type": "#microsoft.graph.groupScope", "identity": "excluded-group-guid" }
  ]
}
```
