---
title: "accessReviewQueryScope resource type"
description: "accessReviewQueryScope defines what will be reviewed in an access review"
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewQueryScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

accessReviewQueryScope defines what will be reviewed in an [accessReview](../resources/accessreviewsv2-root.md).

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|query|String|The query representing what will be reviewed in an access review. Examples of this include /groups/{id}/members?$filter=…|
|queryRoot|String|In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query (like ./manager) is specified.|
|queryType|String|Indicates the type of query. Types include MicrosoftGraph and ARM.|

### Supported queries for accessReviewQueryScope as scope
The queries are supported as the `scope` property in an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md)

|Scenario| Query | Additional Comments |
|--|--|-- |
| Review of all users assigned to a group | /groups/{group id}/transitiveMembers ||
| Review of guest users assigned to a group | /groups/{group id}/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') ||
| Review of guest users assigned to all Microsoft 365 groups | ./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') | Note that the corresponding instanceEnumerationScope should also be passed in to the accessReviewScheduleDefinition. See table below for instanceEnumerationScope query. |
| Entitlement Management Access Package Assignment Reviews | /identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}')| Note that only READ is supported for Access Package Assignment Reviews|

### Supported queries for "instanceEnumerationScope" property

|Scenario| Query | Additional Comments |
|--|--|--|
|  Review of guest users assigned to all Microsoft 365 groups| /v1.0/groups?\$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true | Note that the corresponding scope should also be passed in along with this|
| Review of guest users assigned to all teams | /v1.0/groups?\$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team'))&$count=true | Note that the corresponding scope should also be passed in along with this|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewQueryScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String"
}
```
