---
title: "unifiedRoleAssignmentScheduleRequest resource type"
description: "Represents the request for active role assignment operations through Azure AD Privileged Identity Management."
author: "shauliu1"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleAssignmentScheduleRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the request for active role assignment operations through Azure Active Directory (Azure AD) Privileged Identity Management.

**unifiedRoleAssignmentScheduleRequest** is a ticket-modeled entity used to manage the lifecycle of active role assignments in the directory. It represents the intention or decision of the users and administrators, and also provides the flexibility to enable implementation of recurrent scheduling, approval gates, and so on, as compared to directly exposing `POST`, `PUT`, and `DELETE` operations on `unifiedRoleAssignmentSchedule` and `unifiedRoleAssignmentInstance`.

Administrators can use `unifiedRoleAssignmentScheduleRequest` to create active role assignments with or without start and end time. While an admin can use it to create a request to activate an eligible role assignment represented by [unifiedRoleEligibilityScheduleRequest](unifiedroleeligibilityschedulerequest.md).

Inherits from [request](request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentScheduleRequests](../api/unifiedroleassignmentschedulerequest-list.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection|Get a list of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) objects and their properties.|
|[Create unifiedRoleAssignmentScheduleRequest](../api/unifiedroleassignmentschedulerequest-post-unifiedroleassignmentschedulerequests.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md)|Create a new [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.|
|[Get unifiedRoleAssignmentScheduleRequest](../api/unifiedroleassignmentschedulerequest-get.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md)|Read the properties and relationships of an [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.|
|[filterByCurrentUser](../api/unifiedroleassignmentschedulerequest-filterbycurrentuser.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection|Get a list of the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) objects and their properties that are related to a particular user.|
|[cancel](../api/unifiedroleassignmentschedulerequest-cancel.md)|None|Cancels a [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) immediately and marks it for deletion in 30 days|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|Represents the type of the operation on the role assignment. The possible values are: <ul><li>`AdminAssign`: For administrators to assign roles to users or groups.</li><li>`AdminRemove`: For administrators to remove users or groups from roles.</li><li> `AdminUpdate`: For administrators to change existing role assignments.</li><li>`AdminExtend`: For administrators to extend expiring assignments.</li><li>`AdminRenew`: For administrators to renew expired assignments.</li><li>`SelfActivate`: For users to activate their assignments.</li><li>`SelfDeactivate`: For users to deactivate their active assignments.</li><li>`SelfExtend`: For users to request to extend their expiring assignments.</li><li>`SelfRenew`: For users to request to renew their expired assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](request.md).|
|appScopeId|String|Identifier of the app-specific scope when the assignment scope is app-specific. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units.|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](request.md).|
|createdBy|[identitySet](identityset.md)|The user who created this request. Inherited from [request](request.md).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](request.md).|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](request.md).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only.|
|id|String|The unique identifier for the unifiedRoleAssignmentScheduleRequest. Key, not nullable, Read-only.|
|isValidationOnly|Boolean|A boolean that determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create the request about why it is needed.|
|principalId|String| Identifier of the principal to which the assignment is being granted to.|
|roleDefinitionId|String|Identifier of the unifiedRoleDefinition the assignment is for. Read only.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The schedule object of the role assignment request.|
|status|String|The schedule object of the role assignment request. Inherited from [request](request.md).|
|targetScheduleId|String|Identifier of the schedule object attached to the assignment.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|The ticketInfo object attached to the role assignment request which includes details of the ticket number and ticket system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation.|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app specific scope when the assignment scope is app specific. Containment entity.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|Property referencing the directory object that is the scope of the assignment. Provided so that callers can get the directory object using `$expand` at the same time as getting the role assignment. Read-only. |
|principal|[directoryObject](../resources/directoryobject.md)|Property referencing the principal that is getting a role assignment through the request. Provided so that callers can get the principal using `$expand` at the same time as getting the role assignment. Read-only. |
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Property indicating the roleDefinition the assignment is for. Provided so that callers can get the role definition using `$expand` at the same time as getting the role assignment. roleDefinition.Id will be auto expanded.|
|targetSchedule|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)| Property indicating the schedule for an eligible role assignment. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentScheduleRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentScheduleRequest",
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

