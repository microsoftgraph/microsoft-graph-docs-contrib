---
title: "sharePointGroup resource type"
description: "Represents a cohort of users localized to a SharePointEmbedded container or SharePoint site."
author: "tmarwendo-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 1/31/2025
---

# sharePointGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointGroup** resource represents a group of users or m365 groups that is local to the container or site.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointgroup-list-sharepointgroups.md)|[sharePointGroup](../resources/sharepointgroup.md) collection|Get a list of the [sharePointGroup](../resources/sharepointgroup.md) objects and their properties.|
|[Create](../api/sharepointgroup-create.md)|[sharePointGroup](../resources/sharepointgroup.md)|Create a new [sharePointGroup](../resources/sharepointgroup.md) object.|
|[Get](../api/sharepointgroup-get.md)|[sharePointGroup](../resources/sharepointgroup.md)|Read the properties and relationships of a [sharePointGroup](../resources/sharepointgroup.md) object.|
|[Update](../api/sharepointgroup-update.md)|[sharePointGroup](../resources/sharepointgroup.md)|Update the properties of a [sharePointGroup](../resources/sharepointgroup.md) object.|
|[Delete](../api/sharepointgroup-delete.md)|None|Delete a [sharePointGroup](../resources/sharepointgroup.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Provides a user-visible description of the **sharePointGroup**. Read-write.|
|id|String|The unique stable identifier of the **sharePointGroup**. This id is unique only within the context of a gingle SharePointEmbedded container or SharePoint site. Read-only.|
|members|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|Collection of the members in the  **sharePointGroup**. Read-write.|
|title|String|Provides a user-visible title of the **sharePointGroup**. Read-write.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|The set of members in the **sharePointGroup**. Read-write.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointGroup",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointGroup",
  "id": "string (identifier)",
  "title": "string",
  "description": "string",
  "members": [{"@odata.type": "microsoft.graph.sharePointGroupMember" }],
}
```