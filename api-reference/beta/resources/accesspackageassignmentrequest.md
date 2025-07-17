---
title: "accessPackageAssignmentRequest resource type"
description: "An access package assignment request is created by a user who wants to get an access package assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 08/14/2024
---

# accessPackageAssignmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package assignment request is created by or on behalf of a user who wants to get an access package assignment. If the request is successful, with any necessary approvals, the user receives an access package assignment, and is the subject of that resulting access package assignment. Microsoft Entra ID also creates access package assignment requests automatically for tracking access removal.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/entitlementmanagement-list-assignmentrequests.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) collection | Retrieve a list of **accesspackageassignmentrequest** objects. |
| [Create](../api/entitlementmanagement-post-assignmentrequests.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Create a new **accessPackageAssignmentRequest**. |
| [Get](../api/accesspackageassignmentrequest-get.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Read properties and relationships of an **accessPackageAssignmentRequest** object. |
| [Delete](../api/accesspackageassignmentrequest-delete.md) |None | Delete an **accessPackageAssignmentRequest**. |
|[Cancel](../api/accesspackageassignmentrequest-cancel.md)|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Cancel an **accessPackageAssignmentRequest** object that is in a cancelable state.|
|[Filter by current user](../api/accesspackageassignmentrequest-filterbycurrentuser.md)|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Retrieve the list of **accessPackageAssignmentRequest** objects filtered on the signed-in user.|
| [Reprocess](../api/accesspackageassignmentrequest-reprocess.md) | None | Automatically retry a user's request for access to an access package.|
| [Resume](../api/accesspackageassignmentrequest-resume.md) | None | Resume a user's access package request after waiting for a callback from a custom extension.|
| [List (deprecated)](../api/entitlementmanagement-list-accesspackageassignmentrequests.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) collection | Retrieve a list of **accesspackageassignmentrequest** objects. **This API will be retired soon. Use the [List assignmentRequests](../api/entitlementmanagement-list-assignmentrequests.md) API instead.**  |
| [Create (deprecated)](../api/entitlementmanagement-post-accesspackageassignmentrequests.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Create a new **accessPackageAssignmentRequest**. **This API will be retired soon. Use the [Create accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) API instead.** |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|completedDate|DateTimeOffset|The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|customExtensionCalloutInstances|[customExtensionCalloutInstance](../resources/customextensioncalloutinstance.md) collection|Information about all the custom extension calls that were made during the access package assignment request workflow.|
|customExtensionHandlerInstances|[customExtensionHandlerInstance](../resources/customextensionhandlerinstance.md) collection| A collection of [custom workflow extension](customaccesspackageworkflowextension.md) instances being run on an assignment request. Read-only.|
|expirationDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|isValidationOnly|Boolean|True if the request isn't to be processed for assignment.|
|justification|String|The requestor's supplied justification.|
|requestState|String|One of `PendingApproval`, `Canceled`,  `Denied`, `Delivering`, `Delivered`, `PartiallyDelivered`, `DeliveryFailed`, `Submitted`, or `Scheduled`. Read-only.|
|requestStatus|String|More information on the request processing status. Read-only.|
|requestType|String|One of `UserAdd`, `UserExtend`, `UserUpdate`, `UserRemove`, `AdminAdd`, `AdminRemove`, or `SystemRemove`. A request from the user has a **requestType** of `UserAdd`, `UserUpdate`, or `UserRemove`. Read-only.|
|schedule|[requestSchedule](requestschedule.md)| The range of dates that access is to be assigned to the requestor. Read-only.|
|answers|[accessPackageAnswer](accesspackageanswer.md) collection|Answers provided by the requestor to [accessPackageQuestions](accesspackagequestion.md) asked of them at the time of request.|
|verifiedCredentialsData|[verifiedCredentialData](../resources/verifiedcredentialdata.md) collection| The details of the verifiable credential that the requestor presented, such as the issuer and claims. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[accessPackage](../resources/accesspackage.md)|The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable. Supports `$expand`.|
|accessPackageAssignment|[accessPackageAssignment](accesspackageassignment.md)| For a **requestType** of `UserAdd` or `AdminAdd`, an access package assignment requested to be created. For a **requestType** of `UserRemove`, `AdminRemove`, or `SystemRemove`, this property has the `id` property of an existing assignment to be removed. Supports `$expand`.|
|requestor|[accessPackageSubject](accesspackagesubject.md)| The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports `$expand`.|


## JSON representation


The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentRequest",
  "id": "String (identifier)",
  "requestType": "String",
  "requestState": "String",
  "requestStatus": "String",
  "isValidationOnly": "Boolean",
  "createdDateTime": "String (timestamp)",
  "completedDate": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "justification": "String",
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "answers": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerString"
    }
  ],
  "customExtensionHandlerInstances": [
    {
      "@odata.type": "microsoft.graph.customExtensionHandlerInstance"
    }
  ],
  "customExtensionCalloutInstances": [
    {
      "@odata.type": "microsoft.graph.customExtensionCalloutInstance"
    }
  ],
  "verifiedCredentialsData": [
    {
      "@odata.type": "microsoft.graph.verifiedCredentialData"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
