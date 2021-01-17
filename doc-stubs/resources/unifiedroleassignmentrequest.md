---
title: "unifiedRoleAssignmentRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleAssignmentRequest resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [request](../resources/request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleAssignmentRequests](../api/unifiedroleassignmentrequest-list.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|Get a list of the [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) objects and their properties.|
|[Create unifiedRoleAssignmentRequest](../api/unifiedroleassignmentrequest-post-unifiedroleassignmentrequests.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md)|Create a new [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) object.|
|[Get unifiedRoleAssignmentRequest](../api/unifiedroleassignmentrequest-get.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md)|Read the properties and relationships of an [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) object.|
|[Update unifiedRoleAssignmentRequest](../api/unifiedroleassignmentrequest-update.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md)|Update the properties of an [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) object.|
|[Delete unifiedRoleAssignmentRequest](../api/unifiedroleassignmentrequest-delete.md)|None|Deletes an [unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) object.|
|[filterByCurrentUser](../api/unifiedroleassignmentrequest-filterbycurrentuser.md)|[unifiedRoleAssignmentRequest](../resources/unifiedroleassignmentrequest.md) collection|**TODO: Add Description**|
|[cancel](../api/unifiedroleassignmentrequest-cancel.md)|None|**TODO: Add Description**|
|[List unifiedRoleEligibilitySchedule](../api/unifiedroleassignmentrequest-list-activatedusing.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the unifiedRoleEligibilitySchedule resources from the activatedUsing navigation property.|
|[Add unifiedRoleEligibilitySchedule](../api/unifiedroleassignmentrequest-post-activatedusing.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Add activatedUsing by posting to the activatedUsing collection.|
|[List appScope](../api/unifiedroleassignmentrequest-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleassignmentrequest-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleassignmentrequest-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleassignmentrequest-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleassignmentrequest-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleassignmentrequest-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleassignmentrequest-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleassignmentrequest-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|**TODO: Add Description**|
|appScopeId|String|**TODO: Add Description**|
|directoryScopeId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [request](../resources/request.md)|
|isValidationOnly|Boolean|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|targetScheduleId|String|**TODO: Add Description**|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activatedUsing|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|**TODO: Add Description**|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description**|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleAssignmentRequest",
  "baseType": "Microsoft.Identity.Governance.Common.Data.ExternalModels.V1.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleAssignmentRequest",
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

