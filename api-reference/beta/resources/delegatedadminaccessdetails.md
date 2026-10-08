---
title: "delegatedAdminAccessDetails resource type"
description: "Represents the administrative roles that a Microsoft partner has in a customer tenant through a delegated admin relationship and delegated admin access assignment."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
ms.date: 07/22/2024
---

# delegatedAdminAccessDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the administrative roles that a Microsoft partner has in a customer tenant through a [delegated admin relationship](../resources/delegatedadminrelationship.md) or [delegated admin access assignment](../resources/delegatedadminaccessassignment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|unifiedRoles|[unifiedRole](../resources/unifiedrole.md) collection|The directory roles that the Microsoft partner is assigned in the customer tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

