---
title: "sharePointGroup resource type"
description: "Represents a cohort of users or m365 groups that are localized to a SharePointEmbedded container or SharePoint site."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 1/31/2025
---

# sharePointGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cohort of users or m365 groups that are localized to a SharePointEmbedded container or SharePoint site.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestoragecontainer-list-sharepointgroups.md)|[sharePointGroup](../resources/sharepointgroup.md) collection|Get a list of the sharePointGroup objects and their properties.|
|[Create](../api/filestoragecontainer-post-sharepointgroups.md)|[sharePointGroup](../resources/sharepointgroup.md)|Create a new sharePointGroup object.|
|[Get](../api/sharepointgroup-get.md)|[sharePointGroup](../resources/sharepointgroup.md)|Read the properties and relationships of a sharePointGroup object.|
|[Update](../api/sharepointgroup-update.md)|[sharePointGroup](../resources/sharepointgroup.md)|Update the properties of a sharePointGroup object.|
|[Delete](../api/filestoragecontainer-delete-sharepointgroups.md)|None|Delete a sharePointGroup object.|
|[List members](../api/sharepointgroup-list-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md) collection|Get a list of the [sharePointGroupMember](../resources/sharepointgroupmember.md) objects and their properties.|
|[Create sharePointGroupMember](../api/sharepointgroup-post-members.md)|[sharePointGroupMember](../resources/sharepointgroupmember.md)|Create a new sharePointGroupMember object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Provides a user-visible description of the **sharePointGroup**. Read-write.|
|id|String|The unique stable identifier of the **sharePointGroup**. This ID is unique only within the context of a single SharePointEmbedded container or SharePoint site. Read-only.|
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
  "id": "String (identifier)",
  "title": "String",
  "description": "String"
}
```