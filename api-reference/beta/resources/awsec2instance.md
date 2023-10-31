---
title: "awsEc2Instance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsEc2Instance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsEc2Instance](../api/awsec2instance-list.md)|[awsEc2Instance](../resources/awsec2instance.md) collection|Get a list of the [awsEc2Instance](../resources/awsec2instance.md) objects and their properties.|
|[Get awsEc2Instance](../api/awsec2instance-get.md)|[awsEc2Instance](../resources/awsec2instance.md)|Read the properties and relationships of an [awsEc2Instance](../resources/awsec2instance.md) object.|
|[Update awsEc2Instance](../api/awsec2instance-update.md)|[awsEc2Instance](../resources/awsec2instance.md)|Update the properties of an [awsEc2Instance](../resources/awsec2instance.md) object.|
|[Delete awsEc2Instance](../api/awsec2instance-delete.md)|None|Delete an [awsEc2Instance](../resources/awsec2instance.md) object.|
|[List authorizationSystem](../api/awsec2instance-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsec2instance-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsec2instance-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List awsAuthorizationSystemResource](../api/awsec2instance-list-resource.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get the awsAuthorizationSystemResource resources from the resource navigation property.|
|[Add awsAuthorizationSystemResource](../api/awsec2instance-post-resource.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Add resource by posting to the resource collection.|
|[Remove awsAuthorizationSystemResource](../api/awsec2instance-delete-resource.md)|None|Remove an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
|resource|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsEc2Instance",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsEc2Instance",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

