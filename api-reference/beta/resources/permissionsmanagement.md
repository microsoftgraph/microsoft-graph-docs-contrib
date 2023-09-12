---
title: "permissionsManagement resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# permissionsManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get permissionsManagement](../api/permissionsmanagement-get.md)|[permissionsManagement](../resources/permissionsmanagement.md)|Read the properties and relationships of a [permissionsManagement](../resources/permissionsmanagement.md) object.|
|[Update permissionsManagement](../api/permissionsmanagement-update.md)|[permissionsManagement](../resources/permissionsmanagement.md)|Update the properties of a [permissionsManagement](../resources/permissionsmanagement.md) object.|
|[List permissionsRequestChanges](../api/permissionsmanagement-list-permissionsrequestchanges.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md) collection|Get the permissionsRequestChange resources from the permissionsRequestChanges navigation property.|
|[Create permissionsRequestChange](../api/permissionsmanagement-post-permissionsrequestchanges.md)|[permissionsRequestChange](../resources/permissionsrequestchange.md)|Create a new permissionsRequestChange object.|
|[List scheduledPermissionsRequests](../api/permissionsmanagement-list-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) collection|Get the scheduledPermissionsRequest resources from the scheduledPermissionsRequests navigation property.|
|[Create scheduledPermissionsRequest](../api/permissionsmanagement-post-scheduledpermissionsrequests.md)|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md)|Create a new scheduledPermissionsRequest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|permissionsRequestChanges|[permissionsRequestChange](../resources/permissionsrequestchange.md) collection|**TODO: Add Description**|
|scheduledPermissionsRequests|[scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsManagement"
}
```

