---
title: "gcpRole resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpRoles](../api/gcpauthorizationsystem-list-roles.md)|[gcpRole](../resources/gcprole.md) collection|Get a list of the [gcpRole](../resources/gcprole.md) objects and their properties.|
|[Create gcpRole](../api/gcpauthorizationsystem-post-roles.md)|[gcpRole](../resources/gcprole.md)|Create a new [gcpRole](../resources/gcprole.md) object.|
|[Get gcpRole](../api/gcprole-get.md)|[gcpRole](../resources/gcprole.md)|Read the properties and relationships of a [gcpRole](../resources/gcprole.md) object.|
|[Update gcpRole](../api/gcprole-update.md)|[gcpRole](../resources/gcprole.md)|Update the properties of a [gcpRole](../resources/gcprole.md) object.|
|[Delete gcpRole](../api/gcpauthorizationsystem-delete-roles.md)|None|Delete a [gcpRole](../resources/gcprole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|gcpRoleType|gcpRoleType|**TODO: Add Description**.The possible values are: `system`, `custom`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|scopes|[gcpScope](../resources/gcpscope.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpRole",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "gcpRoleType": "String",
  "scopes": [
    {
      "@odata.type": "microsoft.graph.gcpScope"
    }
  ]
}
```

