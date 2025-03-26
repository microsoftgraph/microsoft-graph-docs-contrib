---
title: "sharePointGroupMember resource type"
description: "Represents a user or Microsoft 365 group within a sharePointGroup."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: "SharePoint group member"
ms.date: 1/31/2025
---

# sharePointGroupMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user or Microsoft 365 group within a [sharePointGroup](./sharepointgroup.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointgroup-list-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|Get a list of the [sharePointGroupMember](../resources/sharepointgroupmember.md) objects and their properties.|
|[Create](../api/sharepointgroup-post-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Create a new [sharePointGroupMember](../resources/sharepointgroupmember.md) object within a [sharePointGroup](../resources/sharepointgroup.md).|
|[Get](../api/sharepointgroupmember-get.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Read the properties and relationships of a [sharePointGroupMember](../resources/sharepointgroup.md) object.|
|[Delete](../api/sharepointgroup-delete-members.md)|None|Delete a [sharePointGroupMember](../resources/sharepointgroupmember.md) object from a [sharePointGroup](../resources/sharepointgroup.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique stable identifier of the **sharePointGroup**. Read-only.|
|identity|[sharePointIdentitySet](../resources/sharepointidentityset.md)|The identity represented by the **sharePointGroupMember** object.|

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