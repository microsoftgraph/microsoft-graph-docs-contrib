---
title: "licenseAssignmentState resource type"
description: "The **licenseAssignmentStates** property of the user entity is a collection of **licenseAssignmentState**. It provides details about license assignments to a user. The details includes information like:  "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "users"
author: "jconley76"
---

# licenseAssignmentState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **licenseAssignmentStates** property of the [user](user.md) entity is a collection of **licenseAssignmentState**. It provides details about license assignments to a user. The details includes information like:

- What plans are disabled for a user
- Whether the license was assigned to the user directly or inherited from a group
- Current state of the assignment
- If the assignment state is Error, what is the error detail for the failure?


## Properties
| Property     | Type   |Description|
|:---------------|:--------|:----------|
|assignedByGroup|String|Indicates whether the license is directly-assigned or inherited from a group. If directly-assigned, this field is `null`; if inherited through a group membership, this field contains the ID of the group. Read-Only.|
|disabledPlans|String collection|The service plans that are disabled in this assignment. Read-Only.|
|error|String|License assignment failure error. If the license is assigned successfully, this field will be Null. Read-Only. The possible values are `CountViolation`, `MutuallyExclusiveViolation`, `DependencyViolation`, `ProhibitedInUsageLocationViolation`, `UniquenessViolation`, and `Other`. For more information on how to identify and resolve license assignment errors see [here](/azure/active-directory/users-groups-roles/licensing-groups-resolve-problems).|
|lastUpdatedDateTime|DateTimeOffset|The timestamp when the state of the license assignment was last updated.|
|skuId|String|The unique identifier for the SKU. Read-Only.|
|state|String|Indicate the current state of this assignment. Read-Only. The possible values are `Active`, `ActiveWithError`, `Disabled`, and `Error`.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.licenseAssignmentState"
}-->
```json
{
  "assignedByGroup": "String",
  "disabledPlans": ["string"],
  "error": " String ",
  "lastUpdatedDateTime": "String (timestamp)",
  "skuId": " String ",
  "state": "String"
}

```
