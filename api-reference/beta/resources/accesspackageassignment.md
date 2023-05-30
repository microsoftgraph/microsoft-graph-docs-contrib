---
title: "accessPackageAssignment resource type"
description: "An access package assignment is an assignment of an access package to a particular subject, for a period of time."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-overview.md), an access package assignment is an assignment of an access package to a particular subject, for a period of time.  For example, an access package assignment can state that user Alice has been assigned access via the access package Sales for the period January 2019 through July 2019.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageAssignments](../api/entitlementmanagement-list-accesspackageassignments.md) | [accessPackageAssignment](accesspackageassignment.md) collection | Retrieve a list of **accessPackageAssignment** objects. |
|[filterByCurrentUser](../api/accesspackageassignment-filterbycurrentuser.md)|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|Retrieve the list of **accessPackageAssignment** objects filtered on the signed-in user.|
| [reprocess](../api/accesspackageassignment-reprocess.md) | None | Automatically reevaluate and enforce a user’s assignments for a specific access package.|
| [additionalAccess](../api/accesspackageassignment-additionalaccess.md) | [accessPackageAssignment](../resources/accesspackageassignment.md) collection|Retrieve the list of **accessPackageAssignment** objects for users who have assignments to incompatible access packages.|

> [!NOTE]
> To create or remove an access package assignment for a user, use the [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-accesspackageassignmentrequests.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageId|String|The identifier of the access package. Read-only.|
|assignmentPolicyId|String|The identifier of the access package assignment policy. Read-only.|
|assignmentState|String|The state of the access package assignment. Possible values are `Delivering`, `Delivered`, or `Expired`. Read-only. Supports `$filter` (`eq`).|
|assignmentStatus|String|More information about the assignment lifecycle.  Possible values include `Delivering`, `Delivered`, `NearExpiry1DayNotificationTriggered`, or `ExpiredNotificationTriggered`.  Read-only.|
|catalogId|String|The identifier of the catalog containing the access package. Read-only.|
|customExtensionCalloutInstances|[customExtensionCalloutInstance](customextensioncalloutinstance.md) collection|Information about all the custom extension calls that were made during the access package assignment workflow.|
|expiredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|isExtended|Boolean|Indicates whether the access package assignment is extended. Read-only.|
|targetId|String| The ID of the subject with the assignment. Read-only.|
|schedule|[requestSchedule](requestschedule.md)| When the access assignment is to be in place. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[accessPackage](accesspackage.md)| Read-only. Nullable. Supports `$filter` (`eq`) on the **id** property and `$expand` query parameters.|
|accessPackageAssignmentPolicy|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)| Read-only. Nullable. Supports `$filter` (`eq`) on the **id** property|
|accessPackageAssignmentResourceRoles|[accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md) collection| The resource roles delivered to the target user for this assignment. Read-only. Nullable.|
|target|[accessPackageSubject](accesspackagesubject.md)| The subject of the access package assignment. Read-only. Nullable. Supports `$expand`. Supports `$filter` (`eq`) on **objectId**. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignment",
  "id": "String (identifier)",
  "catalogId": "String",
  "accessPackageId": "String",
  "assignmentPolicyId": "String",
  "targetId": "String",
  "assignmentStatus": "String",
  "assignmentState": "String",
  "isExtended": "Boolean",
  "expiredDateTime": "String (timestamp)",
  "schedule": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "customExtensionCalloutInstances": [
    {
      "@odata.type": "microsoft.graph.customExtensionCalloutInstance"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
