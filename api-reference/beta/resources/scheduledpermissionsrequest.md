---
title: "scheduledPermissionsRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# scheduledPermissionsRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List scheduledPermissionsRequests](../api/permissionsmanagement-list-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) collection|Get a list of the [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) objects and their properties.|
|[Create scheduledPermissionsRequest](../api/permissionsmanagement-post-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Create a new [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|
|[Get scheduledPermissionsRequest](../api/scheduledpermissionsrequest-get.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Read the properties and relationships of a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|
|[Update scheduledPermissionsRequest](../api/scheduledpermissionsrequest-update.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Update the properties of a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|
|[Delete scheduledPermissionsRequest](../api/permissionsmanagement-delete-scheduledpermissionsrequests.md)|None|Delete a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.|
|[cancelAll](../api/scheduledpermissionsrequest-cancelall.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|justification|String|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|requestedPermissions|[permissionsDefinition](../resources/permissionsdefinition.md)|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|statusDetail|statusDetail|**TODO: Add Description**.The possible values are: `submitted`, `approved`, `completed`, `canceled`, `rejected`, `unknownFutureValue`.|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

