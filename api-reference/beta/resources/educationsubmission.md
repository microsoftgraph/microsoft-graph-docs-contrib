---
title: "educationSubmission resource type"
description: "Represents the resources that an individual (or group) submit for an assignment and the outcomes (such as grades or feedback) associated with the submission."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Submission
ms.date: 09/12/2024
---

# educationSubmission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources that an individual (or group) turn in for an [assignment](educationassignment.md) and the outcomes (such as grades or feedback) that are associated with the **submission**.

Submissions are owned by an **assignment**. Submissions are automatically created when an **assignment** is published. The **submission** owns two lists of resources. Resources represent the user/groups working area while the submitted resources represent the resources that have actively been turned in by students.

The **status** property is read-only and the object is moved through the workflow via actions.

If [setUpResourcesFolder](../api/educationsubmission-setupResourcesFolder.md) hasn't been called on an **educationSubmission** resource, the **resourcesFolderUrl** property is `null`.

## Methods

|Method|Return Type|Description|
|:-----|:----------|:----------|
|[Get submission](../api/educationsubmission-get.md)|[educationSubmission](educationsubmission.md)|Read properties and relationships of an **educationSubmission** object.|
|[List submission resources](../api/educationsubmission-list-resources.md)|[educationSubmissionResource](educationsubmissionresource.md) collection|Get an **educationSubmissionResource** object collection.|
|[List submitted resources](../api/educationsubmission-list-submittedresources.md)|[educationSubmissionResource](educationsubmissionresource.md) collection|Get an **educationSubmissionResource** object collection.|
|[List outcomes](../api/educationsubmission-list-outcomes.md)|[educationOutcome](educationoutcome.md) collection|Get an **educationOutcome** object collection.|
|[Excuse submission](../api/educationsubmission-excuse.md)|[educationSubmission](educationsubmission.md)|Indicates that the submission has no further action for the student and isn't included in average grade calculations.|
|[Return submission](../api/educationsubmission-return.md)|[educationSubmission](educationsubmission.md)|A teacher uses return to indicate that the grades/feedback can be shown to the student.|
|[Reassign submission](../api/educationsubmission-reassign.md)|[educationSubmission](educationsubmission.md)|Reassign the submission to the student with feedback for review.|
|[Set up submission resources folder](../api/educationsubmission-setupresourcesfolder.md)|[educationSubmission](educationsubmission.md)|Create a SharePoint folder (under a predefined location) to upload files as submission resources.|
|[Submit submission](../api/educationsubmission-submit.md)|[educationSubmission](educationsubmission.md)|A student uses submit to turn in the **assignment**. This operation copies the resources into the **submittedResources** folder for grading and updates the status.|
|[Unsubmit submission](../api/educationsubmission-unsubmit.md)|[educationSubmission](educationsubmission.md)|A student uses the unsubmit to move the state of the submission from submitted back to working. This operation copies the resources into the **workingResources** folder for grading and updates the status.|

## Properties
|Property|Type|Description|
|:-------|:---|:----------|
|assignmentId|String|The unique identifier for the assignment with which this submission is associated. A submission is always associated with one and only one assignment.|
|excusedBy|[identitySet](identityset.md)|The user that marked the submission as excused.|
|excusedDateTime|DateTimeOffset|Moment in time when the submission was moved to the excused state. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|Unique identifier for the submission.|
|lastModifiedBy|[identitySet](../resources/intune-rbac-identityset.md)|The identities of those who modified the submission.|
|lastModifiedDateTime|DateTimeOffset|The date and time the submission was modified.|
|reassignedBy|[identitySet](identityset.md)|User who moved the status of this submission to reassigned.|
|reassignedDateTime|DateTimeOffset|Moment in time when the submission was reassigned. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|recipient|[educationSubmissionRecipient](educationsubmissionrecipient.md)|Who this submission is assigned to.|
|resourcesFolderUrl|String|Folder where all file resources for this submission need to be stored.|
|returnedBy|[identitySet](identityset.md)|User who moved the status of this submission to returned.|
|returnedDateTime|DateTimeOffset|Moment in time when the submission was returned. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|status|educationSubmissionStatus|Read-only. The possible values are: `working`, `submitted`, `returned`, `unknownFutureValue`, `reassigned`, and `excused`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `reassigned`, and `excused`.|
|submittedBy|[identitySet](identityset.md)|User who moved the resource into the submitted state.|
|submittedDateTime|DateTimeOffset|Moment in time when the submission was moved into the submitted state. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|unsubmittedBy|[identitySet](identityset.md)|User who moved the resource from submitted into the working state.|
|unsubmittedDateTime|DateTimeOffset|Moment in time when the submission was moved from submitted into the working state. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|webUrl|String|The deep link URL for the given submission.|

## Relationships
|Relationship|Type|Description|
|:-----------|:---|:----------|
|outcomes|[educationOutcome](educationOutcome.md) collection. Holds grades, feedback and/or rubrics information the teacher assigns to this submission|Read-Write. Nullable.|
|resources|[educationSubmissionResource](educationsubmissionresource.md) collection|Nullable.|
|submittedResources|[educationSubmissionResource](educationsubmissionresource.md) collection|Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSubmission"
}-->

```json
{
  "assignmentId": "String",
  "excusedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "excusedDateTime": "String (timestamp)", 
  "id": "String (identifier)",
  "reassignedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "reassignedDateTime": "String (timestamp)",
  "recipient": {"@odata.type":"microsoft.graph.educationSubmissionRecipient"},
  "resourcesFolderUrl": "String",
  "returnedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "returnedDateTime": "String (timestamp)",
  "status": "String",
  "submittedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "submittedDateTime": "String (timestamp)",
  "unsubmittedBy": {"@odata.type":"microsoft.graph.identitySet"},
  "unsubmittedDateTime": "String (timestamp)",
  "webUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationSubmission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


