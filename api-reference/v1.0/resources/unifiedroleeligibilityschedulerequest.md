---
title: "unifiedRoleEligibilityScheduleRequest resource type"
description: "Represents a request for a role eligibility for a principal through PIM. The role eligibility can be permanently eligible without an expiry date or temporarily eligible with an expiry date."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Eligibility schedule request
ms.date: 07/22/2024
---

# unifiedRoleEligibilityScheduleRequest resource type

Namespace: microsoft.graph

Represents a request for a role eligibility for a principal through PIM. The role eligibility can be permanently eligible without an expiry date or temporarily eligible with an expiry date. Inherits from [request](../resources/request.md).

For more information about PIM scenarios you can define through the **unifiedRoleEligibilityScheduleRequest** resource type, see [Overview of role management through the privileged identity management (PIM) API](privilegedidentitymanagementv3-overview.md).

> [!NOTE]
> To activate an eligible role assignment, use the [Create unifiedRoleAssignmentScheduleRequest](../api/rbacapplication-post-roleassignmentschedulerequests.md) API.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/rbacapplication-list-roleeligibilityschedulerequests.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|Retrieve the requests for role eligibilities for principals made through the unifiedRoleEligibilityScheduleRequest object.|
|[Create](../api/rbacapplication-post-roleeligibilityschedulerequests.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Request for a role eligibility for a principal through the unifiedRoleEligibilityScheduleRequest object.|
|[Get](../api/unifiedroleeligibilityschedulerequest-get.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Read the details of a request for a role eligibility request made through the unifiedRoleEligibilityScheduleRequest object.|
|[Filter by current user](../api/unifiedroleeligibilityschedulerequest-filterbycurrentuser.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|In PIM, retrieve the requests for role eligibilities for a particular principal. The principal can be the creator or approver of the unifiedRoleEligibilityScheduleRequest object, or they can be the target of the role eligibility.|
|[Cancel](../api/unifiedroleeligibilityschedulerequest-cancel.md)|None|Immediately cancel a **unifiedRoleEligibilityScheduleRequest** object whose status is `Granted` and have the system automatically delete the canceled request after 30 days.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|unifiedRoleScheduleRequestActions|Represents the type of operation on the role eligibility request. The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. <br/><ul><li>`adminAssign`: For administrators to assign eligible roles to principals.</li><li>`adminRemove`: For administrators to remove eligible roles from principals.</li><li> `adminUpdate`: For administrators to change existing role eligibilities.</li><li>`adminExtend`: For administrators to extend expiring role eligibilities.</li><li>`adminRenew`: For administrators to renew expired eligibilities.</li><li>`selfActivate`: For users to activate their assignments.</li><li>`selfDeactivate`: For users to deactivate their active assignments.</li><li>`selfExtend`: For users to request to extend their expiring assignments.</li><li>`selfRenew`: For users to request to renew their expired assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|appScopeId|String|Identifier of the app-specific scope when the role eligibility is scoped to an app. The scope of a role eligibility determines the set of resources for which the principal is eligible to access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md).|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the role eligibility. The scope of a role eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|id|String|The unique identifier for the **unifiedRoleEligibilityScheduleRequest** object. Key, not nullable, Read-only.  Inherited from [entity](../resources/entity.md).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create they create the **unifiedRoleEligibilityScheduleRequest** object.|
|principalId|String|Identifier of the principal that has been granted the role eligibility. Can be a user or a role-assignable group. You can grant only [active assignments](unifiedroleassignmentschedulerequest.md) service principals.Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal. Supports `$filter` (`eq`, `ne`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the role eligibility. Recurring schedules are currently unsupported.|
|status|String|The status of the role eligibility request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|targetScheduleId|String|Identifier of the schedule object that's linked to the eligibility request. Supports `$filter` (`eq`, `ne`).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the role eligibility request including details of the ticket number and ticket system. Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|Read-only property with details of the app-specific scope when the role eligibility is scoped to an app. Nullable. Supports `$expand`.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the role eligibility. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role eligibility through the request. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Detailed information for the [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object that is referenced through the **roleDefinitionId** property. Supports `$expand`.|
|targetSchedule|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|The schedule for a role eligibility that is referenced through the **targetScheduleId** property. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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
  "@odata.type": "#microsoft.graph.unifiedRoleEligibilityScheduleRequest",
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

