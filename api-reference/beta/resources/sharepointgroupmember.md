---
title: "sharePointGroupMember resource type"
description: "Represents a user within a SharePoint Group."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 1/31/2025
---

# sharePointGroupMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user within a SharePoint group.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointgroup-list-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|Get a list of the sharePointGroupMember objects and their properties.|
|[Create](../api/sharepointgroup-post-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Create a new sharePointGroupMember object.|
|[Get](../api/sharepointgroupmember-get.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Read the properties and relationships of a sharePointGroupMember object.|
|[Delete](../api/sharepointgroup-delete-members.md)|None|Delete a sharePointGroupMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique stable identifier of the **sharePointGroup**. Read-only.|
|identity|[sharePointIdentitySet](../resources/sharepointidentityset.md)|The identity that the sharePointGroupMember object represents. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointGroupMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointGroupMember",
  "id": "String (identifier)",
  "identity": {
    "@odata.type": "microsoft.graph.sharePointIdentitySet"
  }
}
```