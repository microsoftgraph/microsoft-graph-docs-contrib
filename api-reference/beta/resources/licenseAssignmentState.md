# licenseAssignmentState resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **licenseAssignmentStates** property of the [user](user.md) entity is a collection of **licenseAssignmentState**.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedByGroup|string|The object id of the group that assigns this license. If the assignment is direct-assigned license, this field will be Null. Read-Only.|
|disabledPlans|Collection(string)|The service plans that are disabled in this assignment. Read-Only.|
|error|String|License assignment failure error. If the license is assigned successfully, this field will be Null. Read-Only. Possible values: `CountViolation`, `MutuallyExclusiveViolation`, `DependencyViolation`, `ProhibitedInUsageLocationViolation`, `UniquenessViolation`, and Others.|
|skuId|String|The unique identifier for the SKU. Read-Only.|
|state|String|Indicate the current state of this assignment. Read-Only. Possible values: Active, ActiveWithError, Disabled and Error.|

## JSON representation

Here is a JSON representation of the resource

```json
{
  "assignedByGroup": "String",
  "disabledPlans": "Collection(String)",
  "error": " String ",  
  "skuId": "String ",
  "state": "String"
}

```