---
title: "delegatedAdminAccessDetails resource type"
description: "Represents the administrative roles that a Microsoft partner has in a customer tenant through a delegated admin relationship and delegated admin access assignment."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# delegatedAdminAccessDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the administrative roles that a Microsoft partner has in a customer tenant through a delegated admin relationship and delegated admin access assignment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|unifiedRoles|[unifiedRole](../resources/unifiedrole.md) collection|The directory roles that the Microsoft partner is assigned in the customer tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessDetails",
  "unifiedRoles": [
    {
      "@odata.type": "microsoft.graph.unifiedRole"
    }
  ]
}
```

