---
title: "teamworkTagMember resource type"
description: "Represents a user in a team who has a tag applied to them."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkTagMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a team to whom a tag is applied.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamworktagmember-list.md)|[**teamworkTagMember**](teamworktagmember.md) collection|Get a list of the members of a standard tag in a team and their properties.|
|[Create](../api/teamworktagmember-post.md)|[**teamworkTagMember**](teamworktagmember.md)|Create a new **teamworkTagMember** object.|
|[Get](../api/teamworktagmember-get.md)|[**teamworkTagMember**](teamworktagmember.md)|Get the properties and relationships of a member of a standard tag in a team.|
|[Delete](../api/teamworktagmember-delete.md)|None|Delete a member from a standard tag in the team.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The member's display name.|
|id|String|ID of the member.|
|tenantId|String|The ID of the tenant that the tag member is a part of.|
|userId|String|The user ID of the member.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "displayName": "String",  
  "id": "String (Identifier)",
  "tenantId": "String",
  "userId": "String"
}
```

