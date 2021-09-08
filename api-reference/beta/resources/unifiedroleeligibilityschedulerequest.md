---
title: "unifiedRoleEligibilityScheduleRequest resource type"
description: "Represents the request for eligible role assignment operations through Azure AD Privileged Identity Management."
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleEligibilityScheduleRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the request for eligible role assignment through Azure AD Privileged Identity Management.

**unifiedRoleEligibilityScheduleRequest** is a ticket-modeled entity used to manage the lifecycle of eligible role assignments in the directory. It represents the intention or decision of the users and administrators, and also provides the flexibility to enable the implementation of recurrent scheduling, approval gates, and so on, as compared to directly exposing `POST`, `PUT`, and `DELETE` operations on **unifiedRoleEligibilitySchedule** and **unifiedRoleEligibilityInstance** resources.

Administrators can use **unifiedRoleEligibilityScheduleRequest`** to create and/or update eligible role assignments with or without start and end time. While eligible administrators, can use it to create a request to extend or renew their eligible assignments.

Inherits from [request](request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilityScheduleRequests](../api/unifiedroleeligibilityschedulerequest-list.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|Get a list of the [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) objects and their properties.|
|[Create unifiedRoleEligibilityScheduleRequest](../api/unifiedroleeligibilityschedulerequest-post-unifiedroleeligibilityschedulerequests.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Create a new [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) object.|
|[Get unifiedRoleEligibilityScheduleRequest](../api/unifiedroleeligibilityschedulerequest-get.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Read the properties and relationships of an [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) object.|
|[filterByCurrentUser](../api/unifiedroleeligibilityschedulerequest-filterbycurrentuser.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|Get a list of the [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) objects and their properties that are related to a particular user.|
|[cancel](../api/unifiedroleeligibilityschedulerequest-cancel.md)|None|Cancels a [unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) immediately and marks it for deletion in 30 days|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|Represents the type of the operation on the role eligibility assignment. The possible values are: <ul><li>`AdminAdd`: For administrators to assign role eligibility to users or groups to roles.</li><li>`AdminExtend`: For administrators to extend expiring assignments.</li><li>`AdminUpdate`: For administrators to change existing role assignments.</li><li>`AdminRenew`: For administrators to renew expired assignments.</li><li>`AdminRemove`: For administrators to remove users or groups from eligible roles.</li><li>`UserAdd`: For users to activate their eligible assignments.</li><li>`UserExtend`: For users to request to extend their expiring eligible assignments.</li><li>`UserRemove`: For users to deactivate their active eligible assignments.</li><li>`UserRenew`: For users to request to renew their expired eligible assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](request.md).|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units.|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](request.md).|
|createdBy|[identitySet](identityset.md)|The user who created this request. Inherited from [request](request.md).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](request.md).|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](request.md).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only.|
|id|String|The unique identifier for the unifiedRoleEligibilityScheduleRequest. Read-only.|
|isValidationOnly|Boolean|A boolean that determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create the request about why it is needed.|
|principalId|String| Identifier of the principal to which the assignment is being granted to. For example, a user or a group. For groups, they must be assignable to roles, that is, the **isAssignableToRole** of the group property set to `true`.|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Read only.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request.|
|status|String|The schedule object of the role eligibility request. Inherited from [request](request.md).|
|targetScheduleId|String|The time period for which the eligibility assignment is valid.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|The details of the ticket number and ticket system that is attached to the role assignment request.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the assignment scope is app-specific. Containment entity.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the role assignment. Read-only.|
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting a role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the role assignment. Read-only. |
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the role assignment. roleDefinition.Id will be auto expanded.|
|targetSchedule|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)| Property indicating the schedule for an eligible role assignment. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityScheduleRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```

