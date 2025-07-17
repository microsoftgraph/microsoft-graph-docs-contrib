---
title: "accessPackageAssignmentRequest resource type"
description: "An access package assignment request created by a user who wants to obtain an access package assignment."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/14/2024
---
# accessPackageAssignmentRequest resource type

Namespace: microsoft.graph


In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package assignment request is created by or on behalf of a user who wants to obtain an access package assignment. If the request is successful, with any necessary approvals, the user receives an access package assignment, and is the subject of that resulting access package assignment.  Microsoft Entra ID also creates access package assignment requests automatically for tracking access removal.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-assignmentrequests.md)|[accessPackageAssignmentRequest](accesspackageassignmentrequest.md) collection|Retrieve a list of **accesspackageassignmentrequest** objects. |
| [Create](../api/entitlementmanagement-post-assignmentrequests.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Creates a new **accessPackageAssignmentRequest** object. |
|[Get](../api/accesspackageassignmentrequest-get.md)|[accessPackageAssignmentRequest](accesspackageassignmentrequest.md)|Read properties and relationships of an **accessPackageAssignmentRequest** object. |
|[Delete](../api/accesspackageassignmentrequest-delete.md)|None|Delete an **accessPackageAssignmentRequest**. |
|[Cancel](../api/accesspackageassignmentrequest-cancel.md)|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Cancel an **accessPackageAssignmentRequest** object that is in a cancelable state.|
|[Filter by current user](../api/accesspackageassignmentrequest-filterbycurrentuser.md)|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Retrieve the list of **accessPackageAssignmentRequest** objects filtered on the signed-in user.|
|[Reprocess](../api/accesspackageassignmentrequest-reprocess.md) | None | Automatically retry a user’s request for access to an access package.|
|[Resume](../api/accesspackageassignmentrequest-resume.md) | None | Resume a user's access package request after waiting for a callback from a custom extension.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answers|[accessPackageAnswer](accesspackageanswer.md) collection|Answers provided by the requestor to [accessPackageQuestions](accesspackagequestion.md) asked of them at the time of request.|
|completedDateTime|DateTimeOffset|The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|customExtensionCalloutInstances|[customExtensionCalloutInstance](customextensioncalloutinstance.md) collection|Information about all the custom extension calls that were made during the access package assignment workflow.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Supports `$filter`.|
|id|String|Read-only.|
|justification|String|The requestor's supplied justification.|
|requestType|accessPackageRequestType|The type of the request. The possible values are: `notSpecified`, `userAdd`, `UserExtend`, `userUpdate`, `userRemove`, `adminAdd`, `adminUpdate`, `adminRemove`, `systemAdd`, `systemUpdate`, `systemRemove`, `onBehalfAdd` (not supported), `unknownFutureValue`. Requests from the user have a **requestType** of `userAdd`, `userUpdate`, or `userRemove`. This property can't be changed once set.|
|schedule|[entitlementManagementSchedule](../resources/entitlementmanagementschedule.md)|The range of dates that access is to be assigned to the requestor. This property can't be changed once set, but a new schedule for an assignment can be included in another `userUpdate` or `UserExtend` or `adminUpdate` assignment request.|
|state|accessPackageRequestState|The state of the request. The possible values are: `submitted`, `pendingApproval`, `delivering`, `delivered`, `deliveryFailed`, `denied`, `scheduled`, `canceled`, `partiallyDelivered`, `unknownFutureValue`. Read-only. Supports `$filter` (`eq`). |
|status|String|More information on the request processing status. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](../resources/accesspackage.md)|The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable. <br/><br/> Supports `$expand`.|
|assignment|[accessPackageAssignment](../resources/accesspackageassignment.md)|For a **requestType** of `userAdd` or `adminAdd`, this is an access package assignment requested to be created. For a **requestType** of `userRemove`, `adminRemove` or `systemRemove`, this has the `id` property of an existing assignment to be removed.  <br/><br/> Supports `$expand`.|
|requestor|[accessPackageSubject](../resources/accesspackagesubject.md)|The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "requestType": "String",
  "justification": "String",
  "schedule": {
    "@odata.type": "microsoft.graph.entitlementManagementSchedule"
  },
  "state": "String",
  "status": "String",
  "answers": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerString"
    }
  ]

}
```
