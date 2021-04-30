---
title: "accessReviewScheduleDefinition resource type"
description: "Represents the scheduling of an Azure AD access review."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

Represents the scheduling of an Azure AD [access review](accessreviewsv2-root.md).

An accessReviewScheduleDefinition contains a list of [accessReviewInstance](accessreviewinstance.md) objects. Each recurrence of the schedule definition will create an instance. Instances also represent each unique resource being reviewed. If a schedule definition reviews multiple resources, each resource will have a unique instance per each recurrence. In the case of a one-time review, only one instance will be created per resource.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewScheduleDefinitions](../api/accessreviewscheduledefinition-list.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.|
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-create.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Read the properties and relationships of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md)|None|Deletes an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[stop](../api/accessreviewscheduledefinition-stop.md)|None|Stops an access review schedule definition from creating future instances.|
|[filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Returns all definitions where the calling user is the reviewer of any instances.|
|[List instances](../api/accessreviewscheduledefinition-list-instances.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get the accessReviewInstance resources from the instances navigation property.|
|[Create accessReviewInstance](../api/accessreviewscheduledefinition-post-instances.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Create a new accessReviewInstance object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](../resources/useridentity.md)|User who created this review.|
|createdDateTime|DateTimeOffset| Timestamp when review series was created.|
|descriptionForAdmins|String|Description provided by review creators to provide more context of the review to admins. |
|descriptionForReviewers|String| Description provided  by review creators to provide more context of the review to reviewers. Reviewers will see this description in the email sent to them requesting their review.|
|displayName|String|Name of access review series. Required on create.|
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|This collection of reviewer scopes is used to define the list of fallback reviewers who will be notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner does not exist, or manager is specified as reviewer but a user's manager does not exist. Formerly named backupReviewers.|
|id|String|The feature-assigned unique identifier of an access review. Inherited from [entity](../resources/entity.md)|
|instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)|In the case of a review of guest users across all Microsoft 365 groups, this determines the scope of which groups will be reviewed. Each group will become a unique accessReviewInstance of the access review series.  For supported scopes, see [accessReviewQueryScope](accessreviewqueryscope.md).|
|lastModifiedDateTime|DateTimeOffset|Timestamp when review series was last modified.|
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|This collection of access review scopes is used to define who are the reviewers. See [accessReviewReviewerScope](accessreviewreviewerscope.md) for supported queries. Required on create.|
|scope|[accessReviewScope](../resources/accessreviewscope.md)| Defines scope of whose access to what will be reviewed. For supported scopes, see [accessReviewScope](accessreviewscope.md). Required on create.|
|settings|[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)| The settings for an access review series. Required on create.|
|status|String|This read-only field specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|instances|[accessReviewInstance](../resources/accessreviewinstance.md) collection|If the `accessReviewScheduleDefinition` is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique resource under review in the `accessReviewScheduleDefinition`. If a review has multiple resources and multiple instances, each resource will have a unique instance for each recurrence.|

### Supported search queries for accessReviewScheduleDefinition
The following are queries supported on an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) based on the [accessReviewScope](accessreviewscope.md).

|Scenario| Query |
|--|--|
| List every `accessReviewScheduleDefinition` on individual groups (excludes definitions scoped to all Microsoft 365 groups with guest users) | /v1.0/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, '/groups') |
| List every `accessReviewScheduleDefinition` on a specific group (excludes definitions scoped to all Microsoft 365 groups with guest users) | /v1.0/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, '/groups/{group id}') |
| List every `accessReviewScheduleDefinition` scoped to all Microsoft 365 groups with guest users | /v1.0/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, './members') |
| List every `accessReviewScheduleDefinition` on an access package | /v1.0/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, 'accessPackageAssignments') |
| List every `accessReviewScheduleDefinition` for service principals assigned to privileged role | /v1.0/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, 'roleAssignmentScheduleInstances') |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```
