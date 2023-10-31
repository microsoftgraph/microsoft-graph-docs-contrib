---
title: "awsGroup resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsGroups](../api/awsgroup-list.md)|[awsGroup](../resources/awsgroup.md) collection|Get a list of the [awsGroup](../resources/awsgroup.md) objects and their properties.|
|[Get awsGroup](../api/awsgroup-get.md)|[awsGroup](../resources/awsgroup.md)|Read the properties and relationships of an [awsGroup](../resources/awsgroup.md) object.|
|[Update awsGroup](../api/awsgroup-update.md)|[awsGroup](../resources/awsgroup.md)|Update the properties of an [awsGroup](../resources/awsgroup.md) object.|
|[Delete awsGroup](../api/awsgroup-delete.md)|None|Delete an [awsGroup](../resources/awsgroup.md) object.|
|[List authorizationSystem](../api/awsgroup-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsgroup-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsgroup-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

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

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsGroup",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsGroup",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

