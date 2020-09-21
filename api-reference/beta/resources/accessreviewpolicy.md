---
title: "accessReviewPolicy resource type"
description: "In the Azure AD access reviews feature, the `accessReviewPolicy` allows one to specify tenant-level default settings for an access review.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**accessReviewPolicy** allows specification of tenant-level default settings for an [access review](accessreviewsv2-root.md). 

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstance` instances in listings. |

## Properties
| Property                  | Type                                | Required on Create                     | Description |
| :-------------------------| :---------------------------------- | :---------- | :---------- |
| `id`                      |`String`                             | No  | The feature-assigned unique identifier of an access review.|
| `displayName`             |`String`                             | Yes | Name of access review series.|




## Relationships




| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `instances`               |[accessReviewInstances](accessreviewinstance.md) collection         | If the `accessReviewScheduleDefinition` is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique group under review in the `accessReviewScheduleDefinition`. If a review has multiple groups and multiple instances, each group will have a unique instance for each recurrence. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewPolicy"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "createdDateTime": "string (timestamp)",
 "lastModifiedDateTime": "string (timestamp)",
 "status": "string",
 "descriptionForAdmins": "string",
 "descriptionForReviewer": "string",
 "createdBy": "microsoft.graph.userIdentity",
 "instanceEnumerationScope": "microsoft.graph.accessReviewScope",
 "scope": "microsoft.graph.accessReviewScope",
 "reviewers": "Collection(microsoft.graph.accessReviewReviewerScope)",
 "settings": "microsoft.graph.accessReviewScheduleSettings",
 "instances": "Collection(microsoft.graph.accessReviewInstance)"
}
```
## accessReviewScope

The **accessReviewScope** resource type defines what will be reviewed. This is expressed as an odata query. The query type must also be expressed so that scenarios can be supported to review entities outside of MicrosoftGraph, such as ARM.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `query`          |`String`  | The query for what needs to be reviewed. See table for examples. |
| `queryType`          |`String`  | The type of query. Examples include MicrosoftGraph and ARM. |

#### Supported queries for "scope" property

|Scenario| Query | Additional Comments |
|--|--|-- |
| Review of all users assigned to a group | /groups/{group id}/transitiveMembers ||
| Review of guest users assigned to a group | /groups/{group id}/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') ||
| Review of guest users assigned to all groups | ./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest') | Note that the corresponding instanceEnumerationScope should also be passed in along with this|
| Entitlement Management Access Package Assigment Reviews | /identityGovernance/entitlementManagement/accessPackageAssignments?$filter=(accessPackageId eq '{package id}' and assignmentPolicyId eq '{id}')| Note that only READ is supported for Access Package Assignment Reviews|

#### Supported queries for "instanceEnumerationScope" property

|Scenario| Query | Additional Comments |
|--|--|--|
| Review of guest users assigned to all groups, excluding specified groups | /groups?$filter=(groupTypes/any(c:c+eq+'Unified') and id ne '{group id}' and id ne '{group id}' and id ne '{group id}')&$count=true | Note that the corresponding scope should also be passed in along with this. See "Guest users assigned to all groups" in scope property table above. |

## accessReviewReviewerScope

The **accessReviewReviewerScope** is a complex type that allows reviewers to be specified both as a static list of users (i.e., specific users, group owners, group members) or dynamically (i.e., the case where every user is reviewed by their manager). To create a self-review (users review their own access), do not provide reviewers on accessReviewScheduleDefinition creation.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `query`          |`String`  | The query specifying who will be the reviewer. See table for examples. |
| `queryType`          |`String`  | The type of query. Examples include MicrosoftGraph and ARM. |
| `queryRoot`          |`String`  | In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query (i.e., ./manager) is specified. |

#### Supported queries for "reviewers" property

|Scenario| Query | Additional Comments |
|--|--|--|
| Group owner as reviewer | /groups/{group id}/owners ||
| Specific user as reviewer | /users/{user id} ||
| Manager of user being reviewed as reviewer | ./manager | queryRoot must be 'decisions' |

## accessReviewScheduleSettings

The **accessReviewScheduleSettings** is a complex type representing settings of a review.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `mailNotificationsEnabled`|`Boolean`                | Flag to indicate whether emails are enabled/disabled.                |
| `reminderNotificationsEnabled`|`Boolean`       | Flag to indicate whether reminders are enabled/disabled.       |
| `justificationRequiredOnApproval`|`Boolean` | Flag to indicate whether reviewers are required to provide justification with their decision. |
| `defaultDecisionEnabled`|`Boolean` | Flag to indicate whether default decision is enabled/disabled when reviewers do not respond. |
| `defaultDecision`|`String` | Decision chosen if `defaultDecisionEnabled` is enabled. Can be one of "Approve", "Deny", or "Recommendation". |
| `instanceDurationInDays`|`Int32` | Duration of each recurrence of review (`accessReviewInstance`) in number of days. |
| `recurrence`|`microsoft.graph.patternedRecurrence` | Detailed settings for recurrence. Using standard outlook recurrence object.  |
| `autoApplyDecisionsEnabled`|`Boolean` | Flag to indicate whether auto-apply feature is enabled. |
| `applyActions`|`Collection(microsoft.graph.accessReviewApplyAction)` | Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. See below for more information. |
| `recommendationsEnabled`|`Boolean` | Flag to indicate whether decision recommendations are enabled/disabled. |

## accessReviewApplyAction

**accessReviewApplyAction** is a complex type representing a base class for apply actions. There are two derived types currently supported: `removeAccessApplyAction` and `disableAndDeleteApplyAction`.

**removeAccessApplyAction** is a derived type of `accessReviewApplyAction` that indicates removing access of an entity being reviewed upon completion of the review. This is the default type.

**disableAndDeleteUserApplyAction** is a derived type of `accessReviewApplyAction` that indicates disabling and deleting the user being reviewed upon completion of the review.




<!--
{
  "type": "#page.annotation",
  "description": "accessReview resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
