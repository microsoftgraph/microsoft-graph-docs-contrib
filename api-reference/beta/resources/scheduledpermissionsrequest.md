---
title: "scheduledPermissionsRequest resource type"
description: "Represents a permissions request that (EPM) will use to manage permissions for a request identity on resources in the authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# scheduledPermissionsRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a permissions request that Microsoft Entra Permissions Management (EPM) will use to manage permissions for a request identity on resources in the authorization system. This request can be granted, rejected, or canceled by identities in EPM.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create scheduledPermissionsRequest](../api/permissionsmanagement-post-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Create a new [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Time when the scheduledPermissionsRequest was created.|
|id|String|Unique Id of the Permissions Request within EPM. Inherited from [entity](../resources/entity.md).|
|justification|String|Request justification.|
|notes|String|Additional notes to add to the request.|
|requestedPermissions|[permissionsDefinition](../resources/permissionsdefinition.md)|Defines the permission request itself.|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|Schedule to assign the requestedPermissions.|
|statusDetail|statusDetail|The current status of the request. The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|Represents ticketing related metadata that can be used to correlate to the request.|

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

