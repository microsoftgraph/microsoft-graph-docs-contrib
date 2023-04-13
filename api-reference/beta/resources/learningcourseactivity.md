---
title: "learningCourseActivity resource type"
description: "Represents learner course activity entity type - Assigned to Self initiated record."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningCourseActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the metadata of learner course activities for employee learning. This is the base type of [learningAssignment](../resources/learningassignment.md) or [learningSelfInitiated](../resources/learningselfinitiatedcourse.md) types.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create learningCourseActivity](../api/employeeexperienceuser-post-learningcourseactivities.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Create a new [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Get learningCourseActivity](../api/learningcourseactivity-get.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Read the properties and relationships of a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Get learningCourseActivity By ExternalCourseActivityId](../api/learningcourseactivity-getByExternalCourseActivityId.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Read the properties and relationships of a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Update learningCourseActivity](../api/learningcourseactivity-update.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Update the properties of a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[Delete learningCourseActivity](../api/learningcourseactivity-delete.md)|None|Delete a [learningCourseActivity](../resources/learningcourseactivity.md) object.|
|[List learningCourseActivity for user](../api/learningcourseactivity-list.md)|Collection of [learningCourseActivity](../resources/learningcourseactivity.md) object|Retrieve all courses for a user.|
|[Get learningCourseActivity course details for a user](../api/learningcourseactivity-details.md)|[learningCourseActivity](../resources/learningcourseactivity.md)|Retrives a course details for a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|**Type to determine if it’s a LearningAssignment or SelfInitiated course.**
|assignedDateTime|DateTimeOffset|**Date time value when the assignment was completed.**
|assignerUserId|String|**The user id of the assigner.**
|assignmentType|assignmentType|**assignmentType for the course activity. Possible values are `required`, `recommended`, `unknownFutureValue`.**
|completedDateTime|DateTimeOffset|**Date time value when the assignment was completed.**|
|completionPercentage|Int32|**Percenatge completion value of course.**|
|dueDateTime|DateTimeTimeZone|**Due date for the course activity.**
|externalcourseActivityId|String|**A course activity id generated at provider.**|
|Id|String|**The resultant id of this request can be used to make further interactions to the course activity API’s.**
|learningContentId|String|**The Id of learning content received when learning content is created on Viva Learning using learningContent Microsoft Graph API’s.**|
|learnerUserId|String|**The user id of the learner.**|
|learningProviderId|String|**The registration Id of the provider.**|
|startedDateTime|DateTimeOffset|**date time value on which the self-initiated course was started by the learner.**
|status|[courseStatus](../resources/courseStatus.md)|**Represents status of the course activity. Values are (notStarted/inProgress/completed).**|


## Error Conditions and Messages
|Scenario|Method|HTTP Code|Code|Message|
|:---|:---|:---|:---|:---|
|Method not supported for entity|GET, DELETE, PATCH|405|MethodNotAllowed|**This method is not supported for this entity type. Reference the Microsoft Graph documentation for the methods applicable to this entity.**
|User doesn't have appropriate permission scope|GET, DELETE, PATCH|403|Forbidden|**Your account does not have access to this report or data. Please contact your global administrator to request access.** 
|Forbidden|POST, GET, DELETE, PATCH|403|Forbidden|**You do not have a service plan adequate for this request.** 
|Bad Request|POST, DELETE, PATCH, GET|400|BadRequest|**This provider isn't enabled for the given tenant.** 
|Bad Request|POST, DELETE, PATCH, GET|400|BadRequest|**There was an issue with your request. Make sure the registrationId you entered is valid or registered for your tenant.**
|Bad Request|PATCH|400|BadRequest|**Required fields are missing.**
|Bad Request|PATCH|400|BadRequest|**Input fields are invalid.**
|Multiple Field validations failed|PATCH, POST|400|BadRequest|**BadRequest - Input field shouldn't be empty or null.**
|Bad Request|DELETE, GET, PATCH|404|NotFound|**The requested assignment doesn’t exist."**
|Internal Server Error|POST, GET, DELETE, PATCH|500|InternalServerError|**Internal Server Error.** 
|Request throttled|POST, GET, DELETE, PATCH|429|Too Many Requests|**TooManyRequests in a accepted interval - Retry after x minutes.**
|Service Unavailable|POST, GET, DELETE, PATCH|503|Service Unavailable|**ServiceUnavailable - Retry after x minutes.**
|Forbidden|POST, PATCH|403|Forbidden|**The provider is not valid to create course activity for the given learning content - When the registrationId/learningProviderId doesnot match with the provider with which the LearningContent is created.**
|Forbidden|POST, PATCH|403|Forbidden|**User License is not valid to perform the operation - When the user for which Assignment is being created does not have a premium license.**



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningCourseActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningCourseActivity",
  "completedDateTime": "String (timestamp)",
  "completionPercentage": "Integer",
  "externalcourseActivityId": "String",
  "learningContentId": "String",
  "learningProviderId": "String",
  "learnerUserId": "String",
  "status": "String"
}
```

