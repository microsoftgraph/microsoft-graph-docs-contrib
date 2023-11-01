---
title: "gcpCloudFunction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpCloudFunction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [gcpIdentity](../resources/gcpidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpCloudFunctions](../api/gcpcloudfunction-list.md)|[gcpCloudFunction](../resources/gcpcloudfunction.md) collection|Get a list of the [gcpCloudFunction](../resources/gcpcloudfunction.md) objects and their properties.|
|[Get gcpCloudFunction](../api/gcpcloudfunction-get.md)|[gcpCloudFunction](../resources/gcpcloudfunction.md)|Read the properties and relationships of a [gcpCloudFunction](../resources/gcpcloudfunction.md) object.|
|[Update gcpCloudFunction](../api/gcpcloudfunction-update.md)|[gcpCloudFunction](../resources/gcpcloudfunction.md)|Update the properties of a [gcpCloudFunction](../resources/gcpcloudfunction.md) object.|
|[Delete gcpCloudFunction](../api/gcpcloudfunction-delete.md)|None|Delete a [gcpCloudFunction](../resources/gcpcloudfunction.md) object.|
|[List authorizationSystem](../api/gcpcloudfunction-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/gcpcloudfunction-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/gcpcloudfunction-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List gcpAuthorizationSystemResource](../api/gcpcloudfunction-list-resource.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Get the gcpAuthorizationSystemResource resources from the resource navigation property.|
|[Add gcpAuthorizationSystemResource](../api/gcpcloudfunction-post-resource.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Add resource by posting to the resource collection.|
|[Remove gcpAuthorizationSystemResource](../api/gcpcloudfunction-delete-resource.md)|None|Remove a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
|resource|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpCloudFunction",
  "baseType": "microsoft.graph.gcpIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpCloudFunction",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

