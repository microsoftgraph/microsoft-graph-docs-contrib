# licenseAssignmentState resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **licenseAssignmentStates** property of the [user](user.md) entity is a collection of **licenseAssignmentState**. It provides details about license assignments to a user. The details includes information like what plans are disabled for a user, whether the license was assigned to the user directly or was it inherited from a group, current state of the assignment and if the assignment state is Error, what is the error detail for the failure. 


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedByGroup|string|The id of the group that assigns this license. If the assignment is a direct-assigned license, this field will be Null. Read-Only.|
|disabledPlans|Collection(String)|The service plans that are disabled in this assignment. Read-Only.|
|error|String|License assignment failure error. If the license is assigned successfully, this field will be Null. Read-Only. Possible values: `CountViolation`, `MutuallyExclusiveViolation`, `DependencyViolation`, `ProhibitedInUsageLocationViolation`, `UniquenessViolation`, and `Others`.|
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