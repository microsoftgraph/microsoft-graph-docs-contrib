---
title: "unifiedRoleEligibilityScheduleRequest resource type"
description: "Represents a request for a role eligibility for a principal through PIM. The eligibility permanently eligible without an expiry date or temporarily eligible with an expiry date. The supported principals are users, groups, and service principals."
author: "japere"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# unifiedRoleEligibilityScheduleRequest resource type

Namespace: microsoft.graph

Represents a request for a role eligibility for a principal through PIM. The eligibility permanently eligible without an expiry date or temporarily eligible with an expiry date. The supported principals are users, groups, and service principals.

The following PIM scenarios can be defined through an **unifiedRoleEligibilityScheduleRequest** object:
+ An administrator can create and assign to a principal a role eligibility instead of [an active role assignment](unifiedroleassignmentschedulerequest.md).
+ An administrator can update role eligibilities.
+ An administrator can cancel role eligibilities.
+ An administrator can query all role eligibilities and their details.
+ A principal can be eligible for a role with a specific expiration time.
+ A principal can be eligible for a role from a future date and time.
+ A principal can have a recurrent role eligibility, with a recurring schedule.
+ A principal can query their role eligibilities and the details.
+ A principal can request to extend or renew their role eligibilities.
+ A principal that is eligible for a role can activate it for a role assignment, with a specified duration. This is called just-in-time and time-bound access.
+ A principal can request to extend or renew their role eligibilities.

Inherits from [request](../resources/request.md).

> [!NOTE]
> To activate an eligible role assignment, use the [Create unifiedRoleAssignmentScheduleRequest](../api/rbacapplication-post-roleassignmentschedulerequests.md) API.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilityScheduleRequests](../api/rbacapplication-list-roleeligibilityschedulerequests.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|Retrieve the requests for role eligibilities for principals made through the unifiedRoleEligibilityScheduleRequest object.|
|[Create unifiedRoleEligibilityScheduleRequest](../api/rbacapplication-post-roleeligibilityschedulerequests.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Request for a role eligibility for a principal through the unifiedRoleEligibilityScheduleRequest object.|
|[Get unifiedRoleEligibilityScheduleRequest](../api/unifiedroleeligibilityschedulerequest-get.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md)|Read the details of a request for a role eligibility request made through the unifiedRoleEligibilityScheduleRequest object.|
|[filterByCurrentUser](../api/unifiedroleeligibilityschedulerequest-filterbycurrentuser.md)|[unifiedRoleEligibilityScheduleRequest](../resources/unifiedroleeligibilityschedulerequest.md) collection|In PIM, retrieve the requests for role eligibilities for a particular principal. The principal can be the creator or approver of the unifiedRoleEligibilityScheduleRequest object, or they can be the target of the role eligibility.|
|[cancel](../api/unifiedroleeligibilityschedulerequest-cancel.md)|None|Immediately cancel a **unifiedRoleEligibilityScheduleRequest** object whose status is `Granted` and have the system automatically delete the cancelled request after 30 days.|

<!--
|[List appScope](../api/unifiedroleeligibilityschedulerequest-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleeligibilityschedulerequest-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleeligibilityschedulerequest-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleeligibilityschedulerequest-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleeligibilityschedulerequest-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleeligibilityschedulerequest-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleeligibilityschedulerequest-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleeligibilityschedulerequest-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|
|[List unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedulerequest-list-targetschedule.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the unifiedRoleEligibilitySchedule resources from the targetSchedule navigation property.|
|[Add unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityschedulerequest-post-targetschedule.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Add targetSchedule by posting to the targetSchedule collection.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|unifiedRoleScheduleRequestActions|Represents the type of operation on the role eligibility request.The possible values are: `adminAssign`, `adminUpdate`, `adminRemove`, `selfActivate`, `selfDeactivate`, `adminExtend`, `adminRenew`, `selfExtend`, `selfRenew`, `unknownFutureValue`. <br/><ul><li>`adminAssign`: For administrators to assign eligible roles to principals.</li><li>`adminRemove`: For administrators to remove eligible roles from principals.</li><li> `adminUpdate`: For administrators to change existing role eligibilities.</li><li>`adminExtend`: For administrators to extend expiring role eligibilities.</li><li>`adminRenew`: For administrators to renew expired eligibilities.</li><li>`selfActivate`: For users to activate their assignments.</li><li>`selfDeactivate`: For users to deactivate their active assignments.</li><li>`selfExtend`: For users to request to extend their expiring assignments.</li><li>`SelfRenew`: For users to request to renew their expired assignments.</li></ul>|
|approvalId|String|The identifier of the approval of the request. Inherited from [request](../resources/request.md).|
|appScopeId|String|Identifier of the app-specific scope when the role eligibility is scoped to an app. The scope of a role eligibility determines the set of resources for which the principal is eligible to access. App scopes are scopes that are defined and understood by this application only. Use `/` for tenant-wide app scopes. Use **directoryScopeId** to limit the scope to particular directory objects, for example, administrative units. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|completedDateTime|DateTimeOffset|The request completion date time. Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|The principal that created this request. Inherited from [request](../resources/request.md).|
|createdDateTime|DateTimeOffset|The request creation date time. Inherited from [request](../resources/request.md).|
|customData|String|Free text field to define any custom data for the request. Not used. Inherited from [request](../resources/request.md).|
|directoryScopeId|String|Identifier of the directory object representing the scope of the role eligibility. The scope of an role eligibility determines the set of resources for which the principal has been granted access. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. Use `/` for tenant-wide scope. Use **appScopeId** to limit the scope to an application only. Supports `$filter` (`eq`, `ne`, and on `null` values).|
|id|String|The unique identifier for the **unifiedRoleEligibilityScheduleRequest** object. Key, not nullable, Read-only.  Inherited from [entity](../resources/entity.md).|
|isValidationOnly|Boolean|Determines whether the call is a validation or an actual call. Only set this property if you want to check whether an activation is subject to additional rules like MFA before actually submitting the request.|
|justification|String|A message provided by users and administrators when create they create the **unifiedRoleEligibilityScheduleRequest** object.|
|principalId|String|Identifier of the principal that has been granted the role eligibility. Supports `$filter` (`eq`, `ne`).|
|roleDefinitionId|String|Identifier of the [unifiedRoleDefinition](unifiedroledefinition.md) object that is being assigned to the principal. Supports `$filter` (`eq`, `ne`).|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|The period of the role eligibility.|
|status|String|The status of the role eligibility request. Inherited from [request](../resources/request.md). Read-only. Supports `$filter` (`eq`, `ne`).|
|targetScheduleId|String|Identifier of the schedule object that's linked to the eligibility request. Supports `$filter` (`eq`, `ne`).|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticket details linked to the role eligibility request including details of the ticket number and ticket system. Optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)| Read-only property with details of the app-specific scope when the role eligibility is scoped to an app. Nullable.|
|directoryScope|[directoryObject](../resources/directoryobject.md)|The directory object that is the scope of the role eligibility. Read-only. Supports `$expand`.|
|principal|[directoryObject](../resources/directoryobject.md)|The principal that's getting a role eligibility through the request. Supports `$expand`.|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)| Detailed information for the [unifiedRoleDefinition](../resources/unifiedroledefinition.md) object that is referenced through the **roleDefinitionId** property. Supports `$expand`.|
|targetSchedule|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|The schedule for a role eligibility that is referenced through the **targetScheduleId** property.|

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

