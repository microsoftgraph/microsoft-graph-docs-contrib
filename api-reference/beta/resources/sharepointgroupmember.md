---
title: "sharePointGroupMember resource type"
description: "Represents a user within a SharePoint Group."
author: "tmarwendo-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 1/31/2025
---

# sharePointGroupMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user within a SharePoint group.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointgroupmember-list-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|Get a list of the [sharePointGroupMember](../resources/sharepointgroupmember.md) objects and their properties.|
|[Create](../api/sharepointgroupmember-create.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Create a new [sharePointGroupMember](../resources/sharepointgroupmember.md) object.|
|[Get](../api/sharepointgroupmember-get.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Read the properties of a [sharePointGroupMember](../resources/sharepointgroupmember.md) object.|
|[Delete](../api/sharepointgroupmember-delete.md)|None|Delete a [sharePointGroupMember](../resources/sharepointgroupmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique stable identifier of the **sharePointGroup**. Read-only.|
|identity|[sharePointIdentitySet](../resources/sharepointidentityset.md)|The identity that the sharePointGroupMember object represents. |


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
  "id": "string (identifier)",
  "identity": {"@odata.type": "microsoft.graph.sharePointIdentitySet"},
}
```