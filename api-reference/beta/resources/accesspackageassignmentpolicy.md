---
title: "accessPackageAssignmentPolicy resource type"
description: "An access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# accessPackageAssignmentPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment. An access package can have zero or more policies. When a request from a subject is received, the subject is matched against each policy to find the policy (if any) with requestorSettings that include that subject. The policy then determines whether the request requires approval, the duration of the access package assignment, and whether the assignment needs regularly review.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-accesspackageassignmentrequests.md) which references the access package and access package assignment policy.


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/entitlementmanagement-list-accesspackageassignmentpolicies.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection | Retrieve a list of accessPackageAssignmentPolicy objects. |
| [Create](../api/entitlementmanagement-post-accesspackageassignmentpolicies.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Create a new accessPackageAssignmentPolicy object. |
| [Get](../api/accesspackageassignmentpolicy-get.md) | [accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Read properties and relationships of an accessPackageAssignmentPolicy object. |
| [Update](../api/accesspackageassignmentpolicy-update.md)|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) | Update the properties of an accessPackageAssignmentPolicy object. |
| [Delete](../api/accesspackageassignmentpolicy-delete.md) | | Delete an accessPackageAssignmentPolicy. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageId|String|Identifier of the access package.|
|accessReviewSettings|[assignmentReviewSettings](assignmentreviewsettings.md)|Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews aren't required.|
|canExtend|Boolean|Indicates whether a user can extend the access package assignment duration after approval.|
|createdBy|String|Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|description|String|The description of the policy.|
|displayName|String|The display name of the policy. Supports `$filter` (`eq`).|
|durationInDays|Int32|The number of days in which assignments from this policy last until they're expired.|
|expirationDateTime|DateTimeOffset|The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|modifiedBy|String|Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|accessPackageNotificationSettings|[accessPackageNotificationSettings](../resources/accesspackagenotificationsettings.md)|Represents the settings for email notifications for requests to an access package.|
|requestApprovalSettings|[approvalSettings](approvalsettings.md)|Who must approve requests for access package in this policy.|
|requestorSettings|[requestorSettings](requestorsettings.md)|Who can request this access package from this policy.|
|questions|[accessPackageQuestion](accesspackagequestion.md) collection|Questions that are posed to the  requestor.|
|verifiableCredentialSettings|[verifiableCredentialSettings](verifiablecredentialsettings.md)|Settings for verifiable credentials set up through the Microsoft Entra Verified I D service. These settings represent the verifiable credentials that a requestor of an access package in this policy can present to be assigned the access package.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[accessPackage](accesspackage.md)| The access package with this policy. Read-only. Nullable. Supports `$expand`.|
|customExtensionHandlers|[customExtensionHandler](../resources/customextensionhandler.md) collection| The collection of stages when to execute one or more custom access package workflow extensions. Supports `$expand`.| 
|customExtensionStageSettings|[customExtensionStageSetting](../resources/customextensionstagesetting.md) collection|The collection of stages when to execute one or more custom access package workflow extensions. Supports `$expand`.|



## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy",
  "keyProperty": "id"
}-->

```json
{
   "@odata.type": "#microsoft.graph.accessPackageAssignmentPolicy",
   "id": "String (identifier)",
   "accessPackageId": "String",
   "displayName": "String",
   "description": "String",
   "canExtend": "Boolean",
   "durationInDays": "Integer",
   "expirationDateTime": "String (timestamp)",
   "createdBy": "String",
   "createdDateTime": "String (timestamp)",
   "modifiedBy": "String",
   "modifiedDateTime": "String (timestamp)",
   "questions":[
      {
         "@odata.type": "microsoft.graph.accessPackageQuestion"
      }
   ],
   "requestorSettings": {
      "@odata.type": "microsoft.graph.requestorSettings"
   },
   "requestApprovalSettings": {
      "@odata.type": "microsoft.graph.approvalSettings"
   },
   "accessReviewSettings": {
      "@odata.type": "microsoft.graph.assignmentReviewSettings"
   },
   "verifiableCredentialSettings": {
      "@odata.type": "microsoft.graph.verifiableCredentialSettings"
   },
    "accessPackageNotificationSettings": {
    "@odata.type": "microsoft.graph.accessPackageNotificationSettings"
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
