---
title: "Update educationAssignment"
description: "Update the properties of an educationAssignment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update educationAssignment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [educationAssignment](../resources/educationassignment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /education/classes/{educationClassId}/assignments/{educationAssignmentId}
PATCH /education/classes/{educationClassId}/members/{educationUserId}/assignments/{educationAssignmentId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [educationAssignment](../resources/educationassignment.md) object.

The following table shows the properties that are required when you update the [educationAssignment](../resources/educationassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|webUrl|String|**TODO: Add Description**|
|classId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|instructions|[educationItemBody](../resources/educationitembody.md)|**TODO: Add Description**|
|closeDateTime|DateTimeOffset|**TODO: Add Description**|
|dueDateTime|DateTimeOffset|**TODO: Add Description**|
|assignDateTime|DateTimeOffset|**TODO: Add Description**|
|assignedDateTime|DateTimeOffset|**TODO: Add Description**|
|grading|[educationAssignmentGradeType](../resources/educationassignmentgradetype.md)|**TODO: Add Description**|
|assignTo|[educationAssignmentRecipient](../resources/educationassignmentrecipient.md)|**TODO: Add Description**|
|allowLateSubmissions|Boolean|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|allowStudentsToAddResourcesToSubmission|Boolean|**TODO: Add Description**|
|status|educationAssignmentStatus|**TODO: Add Description**. The possible values are: `draft`, `published`, `assigned`, `unknownFutureValue`.|
|notificationChannelUrl|String|**TODO: Add Description**|
|resourcesFolderUrl|String|**TODO: Add Description**|
|addedStudentAction|educationAddedStudentAction|**TODO: Add Description**. The possible values are: `none`, `assignIfOpen`, `unknownFutureValue`.|
|addToCalendarAction|educationAddToCalendarOptions|**TODO: Add Description**. The possible values are: `none`, `studentsAndPublisher`, `studentsAndTeamOwners`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [educationAssignment](../resources/educationassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_educationassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/education/classes/{educationClassId}/assignments/{educationAssignmentId}
Content-Type: application/json
Content-length: 905

{
  "@odata.type": "#microsoft.graph.educationAssignment",
  "webUrl": "String",
  "classId": "String",
  "displayName": "String",
  "instructions": {
    "@odata.type": "microsoft.graph.educationItemBody"
  },
  "closeDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "assignDateTime": "String (timestamp)",
  "assignedDateTime": "String (timestamp)",
  "grading": {
    "@odata.type": "microsoft.graph.educationAssignmentGradeType"
  },
  "assignTo": {
    "@odata.type": "microsoft.graph.educationAssignmentRecipient"
  },
  "allowLateSubmissions": "Boolean",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "allowStudentsToAddResourcesToSubmission": "Boolean",
  "status": "String",
  "notificationChannelUrl": "String",
  "resourcesFolderUrl": "String",
  "addedStudentAction": "String",
  "addToCalendarAction": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.educationAssignment",
  "id": "83704420-4420-8370-2044-708320447083",
  "webUrl": "String",
  "classId": "String",
  "displayName": "String",
  "instructions": {
    "@odata.type": "microsoft.graph.educationItemBody"
  },
  "closeDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "assignDateTime": "String (timestamp)",
  "assignedDateTime": "String (timestamp)",
  "grading": {
    "@odata.type": "microsoft.graph.educationAssignmentGradeType"
  },
  "assignTo": {
    "@odata.type": "microsoft.graph.educationAssignmentRecipient"
  },
  "allowLateSubmissions": "Boolean",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "allowStudentsToAddResourcesToSubmission": "Boolean",
  "status": "String",
  "notificationChannelUrl": "String",
  "resourcesFolderUrl": "String",
  "addedStudentAction": "String",
  "addToCalendarAction": "String"
}
```

