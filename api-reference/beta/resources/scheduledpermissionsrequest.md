---
title: "scheduledPermissionsRequest resource type"
description: "Represents a request for permissions on resources in a target authorization system that an identity makes through Microsoft Entra Permissions Management, either directly or indirectly."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 05/23/2024
---

# scheduledPermissionsRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Represents a request for permissions on resources in a target authorization system that an identity makes through Microsoft Entra Permissions Management, either directly or indirectly. An authorized administrator can grant, reject, or cancel the request.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/permissionsmanagement-post-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Create a new [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|
|[Cancel all](../api/scheduledpermissionsrequest-cancelall.md)|None|Cancels a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the identity created the request.|
|id|String|Unique identifier for the permissions request within Permissions Management. Inherited from [entity](../resources/entity.md).|
|justification|String|The identity's justification for the request.|
|notes|String|Additional context for the permissions request.|
|requestedPermissions|[permissionsDefinition](../resources/permissionsdefinition.md)|The permissions requested.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|When to assign the requested permissions.|
|statusDetail|statusDetail|The current status of the request. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Ticketing-related metadata that you can use to correlate to the request.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.scheduledPermissionsRequest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.scheduledPermissionsRequest",
  "id": "String (identifier)",
  "requestedPermissions": {
    "@odata.type": "microsoft.graph.permissionsDefinition"
  },
  "notes": "String",
  "justification": "String",
  "createdDateTime": "String (timestamp)",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  },
  "statusDetail": "String"
}
```


