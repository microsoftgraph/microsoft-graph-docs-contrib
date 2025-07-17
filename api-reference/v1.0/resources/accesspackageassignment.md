---
title: "accessPackageAssignment resource type"
description: "An access package assignment is an assignment of an access package to a particular subject and time range."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/15/2024
---

# accessPackageAssignment resource type

Namespace: microsoft.graph

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package assignment is an assignment of an access package to a particular subject and time range. For example, an access package assignment can state that user Alice is assigned access via the access package Sales for the period January 2019 through July 2019.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-assignments.md)|[accessPackageAssignment](accesspackageassignment.md) collection|Retrieve a list of **accessPackageAssignment** objects. |
|[Get](../api/accesspackageassignment-get.md)|[accessPackageAssignment](../resources/accesspackageassignment.md)|Retrieve a **accessPackageAssignment** object. |
|[Filter by current user](../api/accesspackageassignment-filterbycurrentuser.md)|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|Retrieve the list of **accessPackageAssignment** objects filtered on the signed-in user.|
|[Reprocess](../api/accesspackageassignment-reprocess.md) | None | Automatically reevaluate and enforce a user's assignments for a specific access package.|
|[Check other access](../api/accesspackageassignment-additionalaccess.md) | [accessPackageAssignment](../resources/accesspackageassignment.md) collection| Retrieve a list of **accessPackageAssignment** objects indicating potential separation of duties conflicts or access to incompatible access packages. |

> [!NOTE]
> To create, update or remove an access package assignment for a user, use the [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) method.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionCalloutInstances|[customExtensionCalloutInstance](customextensioncalloutinstance.md) collection|Information about all the custom extension calls that were made during the access package assignment workflow.|
|expiredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|Read-only.|
|schedule|[entitlementManagementSchedule](../resources/entitlementmanagementschedule.md)|When the access assignment is to be in place. Read-only.|
|state|accessPackageAssignmentState|The state of the access package assignment. The possible values are: `delivering`, `partiallyDelivered`, `delivered`, `expired`, `deliveryFailed`, `unknownFutureValue`. Read-only. Supports `$filter` (`eq`).|
|status|String|More information about the assignment lifecycle. Possible values include `Delivering`, `Delivered`, `NearExpiry1DayNotificationTriggered`, or `ExpiredNotificationTriggered`. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackage|[accessPackage](accesspackage.md)|Read-only. Nullable. Supports `$filter` (`eq`) on the **id** property and `$expand` query parameters.|
|target|[accessPackageSubject](accesspackagesubject.md)|The subject of the access package assignment. Read-only. Nullable. Supports `$expand`. Supports `$filter` (`eq`) on **objectId**.|
|assignmentPolicy|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)|Read-only. Supports `$filter` (`eq`) on the **id** property and `$expand` query parameters.|

## JSON representation
The following JSON representation shows the resource type.
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
  "expiredDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "schedule": {
    "@odata.type": "microsoft.graph.entitlementManagementSchedule"
  },
  "state": "String",
  "status": "String"
}
```
