---
title: "educationAssignment resource type"
description: "Represents a task or unit of work assigned to a student or team member in a class as part of their study."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: resourcePageType
---

# educationAssignment resource type

Namespace: microsoft.graph

Represents a task or unit of work assigned to a student or team member in a class as part of their study. 

Only teachers or team owners can create **assignments**. **Assignments** contain handouts and tasks that the teacher wants the student to work on. Each student **assignment** has an associated [submission](educationsubmissionresource.md) that contains any work their teacher asked to be turned in. A teacher can add scores and feedback to the **submission** turned in by the student.

When an **assignment** is created, it is in a Draft state. Students can't see the **assignment** and **submissions** won't be created. You can change the status of an **assignment** by using the [publish](../api/educationassignment-publish.md) action. You can't use a PATCH request to change the **assignment** status.

The assignment APIs are exposed in the class namespace.

Inherits from [entity](../resources/entity.md).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create assignment resource](../api/educationassignment-post-resource.md) |[educationAssignmentResource](educationassignmentresource.md)| Create a new **educationAssignmentResource** by posting to the resources collection.|
|[Get assignment](../api/educationassignment-get.md) | [educationAssignment](educationassignment.md) |Read properties and relationships of an **educationAssignment** object.|
|[Update](../api/educationassignment-update.md) | [educationAssignment](educationassignment.md)	|Update an **educationAssignment** object. |
|[Delete](../api/educationassignment-delete.md) | None |Delete an **educationAssignment** object. |
|[Publish](../api/educationassignment-publish.md)|[educationAssignment](educationassignment.md)|Change the state of an **educationAssignment** object from draft to published.|
|[Set up assignment resources folder](../api/educationassignment-setupresourcesfolder.md)| string| Create a SharePoint folder (under pre-defined location) to upload files as assignment resources.|
|[Set up assignment feedback resources folder](../api/educationassignment-setupfeedbackresourcesfolder.md)|[educationAssignment](../resources/educationassignment.md)|Create a SharePoint folder to upload feedback files for a given [educationSubmission](../resources/educationsubmission.md).|
|[List resources](../api/educationassignment-list-resources.md) |[educationAssignmentResource](educationassignmentresource.md) collection| Get an **educationAssignmentResource** object collection.|
|[List submissions](../api/educationassignment-list-submissions.md) |[educationSubmission](educationsubmission.md) collection| Get an **educationSubmission** object collection.|
|[List categories](../api/educationassignment-list-categories.md) |[educationCategory](educationcategory.md) collection| Get an **educationCategory** object collection.|
|[Add categories](../api/educationassignment-post-categories.md) |[educationCategory](educationcategory.md) | Assign an **educationCategory** belonging to the class to this assignment.|
|[Remove category](../api/educationassignment-remove-category.md) |None| Remove an **educationCategory** belonging to the class from this assignment.|
|[Attach rubric](../api/educationassignment-put-rubric.md)|None|Attach an existing **educationRubric** to this assignment.|
|[Remove rubric](../api/educationassignment-delete-rubric.md)|None|Detach the **educationRubric** from this assignment.|
|[Get delta](../api/educationassignment-delta.md)|[educationAssignment](../resources/educationassignment.md) collection|Get a list of newly created or updated **educationAssignment** objects without having to perform a full read of the collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|addedStudentAction|String| Optional field to control the **assignment** behavior for students who are added after the **assignment** is published. If not specified, defaults to `none`. Supported values are: `none`, `assignIfOpen`. For example, a teacher can use `assignIfOpen` to indicate that an assignment should be assigned to any new student who joins the class while the assignment is still open, and `none` to indicate that an assignment should not be assigned to new students.|
|addToCalendarAction| educationAddToCalendarOptions|Optional field to control the **assignment** behavior  for adding **assignments** to students' and teachers' calendars when the **assignment** is published. The possible values are: `none`, `studentsAndPublisher`, `studentsAndTeamOwners`, `unknownFutureValue`, and `studentsOnly`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `studentsOnly`. The default value is `none`.|
|allowLateSubmissions|Boolean| Identifies whether students can submit after the due date. If this property isn't specified during create, it defaults to true. |
|allowStudentsToAddResourcesToSubmission|Boolean| Identifies whether students can add their own resources to a **submission** or if they can only modify resources added by the teacher. |
|assignDateTime|DateTimeOffset|The date when the **assignment** should become active.  If in the future, the **assignment** isn't shown to the student until this date.  The **Timestamp** type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|assignTo|[educationAssignmentRecipient](educationassignmentrecipient.md)| Which users, or whole class should receive a **submission** object once the **assignment** is published. |
|assignedDateTime|DateTimeOffset|The moment that the **assignment** was published to students and the **assignment** shows up on the students timeline.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|classId|String| Class which this **assignment** belongs. |
|closeDateTime|DateTimeOffset| Date when the **assignment** will be closed for **submissions**. This is an optional field that can be null if the **assignment** does not allowLateSubmissions or when the closeDateTime is the same as the dueDateTime. But if specified, then the closeDateTime must be greater than or equal to the dueDateTime. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|createdBy|[identitySet](identityset.md)| Who created the **assignment**. |
|createdDateTime|DateTimeOffset|Moment when the **assignment** was created.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|displayName|String|Name of the **assignment**.|
|dueDateTime|DateTimeOffset|Date when the students **assignment** is due.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|feedbackResourcesFolderUrl|String|Folder URL where all the feedback file resources for this **assignment** are stored.|
|grading|[educationAssignmentGradeType](educationassignmentgradetype.md)|How the **assignment** will be graded. |
|id|String| The unique identifier for the **assignment**. Inherited from [entity](../resources/entity.md). Read-only.|
|instructions|[itemBody](itembody.md)| Instructions for the assignment.  This along with the display name tell the student what to do. |
|lastModifiedBy|[identitySet](identityset.md)| Who last modified the **assignment**. |
|lastModifiedDateTime|DateTimeOffset|Moment when the **assignment** was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|notificationChannelUrl|String|Optional field to specify the URL of the [channel](channel.md) to post the **assignment** publish notification. If not specified or null, defaults to the `General` channel. This field only applies to **assignments** where the **assignTo** value is [educationAssignmentClassRecipient](educationassignmentclassrecipient.md). Updating the **notificationChannelUrl** isn't allowed after the assignment has been published.|
|resourcesFolderUrl|string| Folder URL where all the file resources for this **assignment** are stored.|
|status|string| Status of the **Assignment**.  You can't PATCH this value.  Possible values are: `draft`, `scheduled`, `published`, `assigned`.|
|webUrl|string| The deep link URL for the given **assignment**.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|categories|[educationCategory](educationcategory.md) collection| When set, enables users to easily find **assignments** of a given type.  Read-only. Nullable.|
|resources|[educationAssignmentResource](educationassignmentresource.md) collection| Learning objects that are associated with this assignment.  Only teachers can modify this list. Nullable.|
|rubric|[educationRubric](educationrubric.md)|When set, the grading rubric attached to this **assignment**.|
|submissions|[educationSubmission](educationsubmission.md) collection| Once published, there is a **submission** object for each student representing their work and grade.  Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationAssignment"
}-->

```json
{
  "addedStudentAction": "String",
  "addToCalendarAction": "String",  
  "allowLateSubmissions": "Boolean",
  "allowStudentsToAddResourcesToSubmission": "Boolean",
  "assignDateTime": "String (timestamp)",
  "assignTo": {"@odata.type": "microsoft.graph.educationAssignmentRecipient"},
  "assignedDateTime": "String (timestamp)",
  "classId": "String",
  "closeDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "dueDateTime": "String (timestamp)",
  "feedbackResourcesFolderUrl": "String",
  "grading": {"@odata.type": "microsoft.graph.educationAssignmentGradeType"},
  "id": "String (identifier)",
  "instructions": {"@odata.type": "microsoft.graph.itemBody"},
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "notificationChannelUrl": "String",
  "status": "String",
  "webUrl": "String",
  "resourcesFolderUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
