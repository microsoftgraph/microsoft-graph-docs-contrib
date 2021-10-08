---
title: "inboundSharedUserProfile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# inboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inboundSharedUserProfiles](../api/inboundshareduserprofile-list.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md) collection|Get a list of the [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) objects and their properties.|
|[Create inboundSharedUserProfile](../api/inboundshareduserprofile-create.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|Create a new [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.|
|[Get inboundSharedUserProfile](../api/inboundshareduserprofile-get.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|Read the properties and relationships of an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.|
|[Update inboundSharedUserProfile](../api/inboundshareduserprofile-update.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|Update the properties of an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.|
|[Delete inboundSharedUserProfile](../api/inboundshareduserprofile-delete.md)|None|Deletes an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object.|
|[checkMemberGroups](../api/inboundshareduserprofile-checkmembergroups.md)|String collection|**TODO: Add Description**|
|[checkMemberObjects](../api/inboundshareduserprofile-checkmemberobjects.md)|String collection|**TODO: Add Description**|
|[getMemberGroups](../api/inboundshareduserprofile-getmembergroups.md)|String collection|**TODO: Add Description**|
|[getMemberObjects](../api/inboundshareduserprofile-getmemberobjects.md)|String collection|**TODO: Add Description**|
|[restore](../api/inboundshareduserprofile-restore.md)|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|displayName|String|**TODO: Add Description**|
|homeTenantId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md).|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inboundSharedUserProfile",
  "baseType": "Microsoft.DirectoryServices.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inboundSharedUserProfile",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "userId": "String",
  "userPrincipalName": "String",
  "displayName": "String",
  "homeTenantId": "String"
}
```

