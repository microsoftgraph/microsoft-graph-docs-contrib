---
title: "awsIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).

The following resources inherit from this resource type:

- [awsAccessKey](awsaccesskey.md)
- [awsEc2Instance](awsec2instance.md)
- [awsGroup](awsgroup.md)
- [awsLambda](awslambda.md)
- [awsRole](awsrole.md)
- [awsUser](awsuser.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsIdentities](../api/awsidentity-list.md)|[awsIdentity](../resources/awsidentity.md) collection|Get a list of the [awsIdentity](../resources/awsidentity.md) objects and their properties.|
|[Get awsIdentity](../api/awsidentity-get.md)|[awsIdentity](../resources/awsidentity.md)|Read the properties and relationships of an [awsIdentity](../resources/awsidentity.md) object.|
|[Update awsIdentity](../api/awsidentity-update.md)|[awsIdentity](../resources/awsidentity.md)|Update the properties of an [awsIdentity](../resources/awsidentity.md) object.|
|[Delete awsIdentity](../api/awsidentity-delete.md)|None|Delete an [awsIdentity](../resources/awsidentity.md) object.|
|[List authorizationSystem](../api/awsidentity-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsidentity-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsidentity-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

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

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsIdentity",
  "baseType": "microsoft.graph.authorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

