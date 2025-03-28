---
title: "engagementRoleMember resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# engagementRoleMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/engagementrole-list-members.md)|[engagementRoleMember](../resources/engagementrolemember.md) collection|Get a list of the engagementRoleMember objects and their properties.|
|[Create](../api/engagementrole-post-members.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Create a new engagementRoleMember object.|
|[Get](../api/engagementrolemember-get.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Read the properties and relationships of an engagementRoleMember object.|
|[Update](../api/engagementrolemember-update.md)|[engagementRoleMember](../resources/engagementrolemember.md)|Update the properties of an engagementRoleMember object.|
|[Delete](../api/engagementrole-delete-members.md)|None|Delete an engagementRoleMember object.|
|[List user](../api/engagementrolemember-list-user.md)|[user](../resources/user.md) collection|**TODO: Add a useful description.**|
|[Add user](../api/engagementrolemember-post-user.md)|[user](../resources/user.md)|Add user by posting to the user collection.|
|[Remove user](../api/engagementrolemember-delete-user.md)|None|Remove a [user](../resources/user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|userId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|user|[user](../resources/user.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementRoleMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementRoleMember",
  "id": "String (identifier)",
  "userId": "String",
  "createdDateTime": "String (timestamp)"
}
```

