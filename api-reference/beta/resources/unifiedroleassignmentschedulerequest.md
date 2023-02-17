---
title: "unifiedRoleAssignmentScheduleRequest resource type"
description: "In PIM, represents a request for an active role assignment to a principal. The role assignment can be permanently active with or without an expiry date, or temporarily active after activation of an eligible assignment."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleAssignmentScheduleRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In PIM, represents a request for an active role assignment to a principal. The role assignment can be permanently active with or without an expiry date, or temporarily active after activation of an eligible assignment. Inherits from [request](../resources/request.md).

For more information about PIM scenarios you can define through the **unifiedRoleAssignmentScheduleRequest** resource type, see [Overview of role management through the privileged identity management (PIM) API](privilegedidentitymanagementv3-overview.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentScheduleRequests](../api/rbacapplication-list-roleassignmentschedulerequests.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection| Retrieve the requests for active role assignments made through the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.|
|[Create unifiedRoleAssignmentScheduleRequest](../api/rbacapplication-post-roleassignmentschedulerequests.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md)|Create a request for an active and persistent role assignment or activate, deactivate, extend, or renew an eligible role assignment.|
|[Get unifiedRoleAssignmentScheduleRequest](../api/unifiedroleassignmentschedulerequest-get.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md)|Retrieve a request for an active role assignment made through the [unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) object.|
|[cancel](../api/unifiedroleassignmentschedulerequest-cancel.md)|None| Cancel a request for an active role assignment. |
|[filterByCurrentUser](../api/unifiedroleassignmentschedulerequest-filterbycurrentuser.md)|[unifiedRoleAssignmentScheduleRequest](../resources/unifiedroleassignmentschedulerequest.md) collection| Retrieve the requests for active role assignments for a particular principal.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|Represents the type of the operation on the role assignment request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. <br/><ul><li>`adminAssign`: For administrators to assign roles to principals.</li><li>`adminRemove`: For administrators to remove principals from roles.</li><li> `adminUpdate`: For administrators to change existing role assignments.</li><li>`adminExtend`: For administrators to extend expiring assignments.</li><li>`adminRenew`: For administrators to renew expired assignments.</li><li>`selfActivate`: For principals to activate their assignments.</li><li>`selfDeactivate`: For principals to deactivate their active assignments.</li><li>`selfExtend`: For principals to request to extend their expiring assignments.</li><li>`selfRenew`: For principals to request to renew their expired assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|appScopeId|String|Identifier of the app-specific scope when the assignment is scoped to an app. The scope of an assignment determines the set of resources for which the principal has been granted access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md). Read-only.|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the assignment. The scope of an assignment determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|id|String|The unique identifier for the **unifiedRoleAssignmentScheduleRequest** object. Key, not nullable, Read-only. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create they create the **unifiedRoleAssignmentScheduleRequest** object.|
|principalId|String|Identifier of the principal that has been granted the assignment. Can be a user, role-assignable group, or a service principal. Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal. Supports `$filter` (`eq`, `ne`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the role assignment. Recurring schedules are currently unsupported.|
|status|String|The status of the role assignment request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|targetScheduleId|String|Identifier of the schedule object that's linked to the assignment request. Supports `$filter` (`eq`, `ne`).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the role assignment request including details of the ticket number and ticket system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|If the request is from an eligible administrator to activate a role, this parameter will show the related eligible assignment for that activation. Otherwise, it's `null`. Supports `$expand`.|
|appScope|[appScope](../resources/appscope.md)| Read-only property with details of the app-specific scope when the assignment is scoped to an app. Nullable. Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the assignment. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role assignment through the request. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)| Detailed information for the [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object that is referenced through the **roleDefinitionId** property. Supports `$expand`.|
|targetSchedule|[unifiedRoleAssignmentSchedule](../resources/unifiedroleassignmentschedule.md)|The schedule for an eligible role assignment that is referenced through the **targetScheduleId** property. Supports `$expand`.|

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
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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

