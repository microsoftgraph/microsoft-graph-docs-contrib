---
title: "outboundSharedUserProfile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# outboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List outboundSharedUserProfiles](../api/outboundshareduserprofile-list.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md) collection|Get a list of the [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) objects and their properties.|
|[Create outboundSharedUserProfile](../api/outboundshareduserprofile-create.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md)|Create a new [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.|
|[Get outboundSharedUserProfile](../api/outboundshareduserprofile-get.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md)|Read the properties and relationships of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.|
|[Update outboundSharedUserProfile](../api/outboundshareduserprofile-update.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md)|Update the properties of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.|
|[Delete outboundSharedUserProfile](../api/outboundshareduserprofile-delete.md)|None|Deletes an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object.|
|[checkMemberGroups](../api/outboundshareduserprofile-checkmembergroups.md)|String collection|**TODO: Add Description**|
|[checkMemberObjects](../api/outboundshareduserprofile-checkmemberobjects.md)|String collection|**TODO: Add Description**|
|[getMemberGroups](../api/outboundshareduserprofile-getmembergroups.md)|String collection|**TODO: Add Description**|
|[getMemberObjects](../api/outboundshareduserprofile-getmemberobjects.md)|String collection|**TODO: Add Description**|
|[restore](../api/outboundshareduserprofile-restore.md)|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|[List tenants](../api/outboundshareduserprofile-list-tenants.md)|[tenantReference](../resources/tenantreference.md) collection|Get the tenantReference resources from the tenants navigation property.|
|[Create tenantReference](../api/outboundshareduserprofile-post-tenants.md)|[tenantReference](../resources/tenantreference.md)|Create a new tenantReference object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|userId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tenants|[tenantReference](../resources/tenantreference.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.outboundSharedUserProfile",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outboundSharedUserProfile",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "userId": "String"
}
```

