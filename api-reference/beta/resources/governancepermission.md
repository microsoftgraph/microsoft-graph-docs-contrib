---
title: "governancePermission resource type"
description: "Represents the access permission that a governanceSubject has to a specific governanceResource.  "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "rkarim-ms"
ROBOTS: NOINDEX
ms.date: 03/21/2024
---

# governancePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [pim-v2ResourceRoles-deprecation](../../includes/pim-v2ResourceRoles-deprecation.md)]

Represents the access permission that a [governanceSubject](../resources/governancesubject.md) has to a specific [governanceResource](../resources/governanceresource.md).


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|accessLevel|String|The access level. Valid values: ``None``, ``UserRead``, ``AdminRead``, and ``AdminReadWrite``.|
|isActive|Boolean|Indicate if the requestor has any active role assignment for the access level.|
|isEligible|Boolean|Indicate if the requestor has any eligible role assignment for the access level.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governancePermission"
}-->
```json
{
  "accessLevel": "String",
  "isActive": true,
  "isEligible": true
}

```


