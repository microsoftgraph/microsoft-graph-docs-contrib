---
title: "mailboxFolder resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mailboxFolder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mailbox-list-folders.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|Get a list of the mailboxFolder objects and their properties.|
|[Create](../api/mailbox-post-folders.md)|[mailboxFolder](../resources/mailboxfolder.md)|Create a new mailboxFolder object.|
|[Get](../api/mailboxfolder-get.md)|[mailboxFolder](../resources/mailboxfolder.md)|Read the properties and relationships of a mailboxFolder object.|
|[Update](../api/mailboxfolder-update.md)|[mailboxFolder](../resources/mailboxfolder.md)|Update the properties of a mailboxFolder object.|
|[Delete](../api/mailbox-delete-folders.md)|None|Delete a mailboxFolder object.|
|[delta](../api/mailboxfolder-delta.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|**TODO: Add Description**|
|[List childFolders](../api/mailboxfolder-list-childfolders.md)|[mailboxFolder](../resources/mailboxfolder.md) collection|**TODO: Add a useful description.**|
|[Create mailboxFolder](../api/mailboxfolder-post-childfolders.md)|[mailboxFolder](../resources/mailboxfolder.md)|Create a new mailboxFolder object.|
|[List items](../api/mailboxfolder-list-items.md)|[mailboxItem](../resources/mailboxitem.md) collection|**TODO: Add a useful description.**|
|[Create mailboxItem](../api/mailboxfolder-post-items.md)|[mailboxItem](../resources/mailboxitem.md)|Create a new mailboxItem object.|
|[List multiValueExtendedProperties](../api/mailboxfolder-list-multivalueextendedproperties.md)|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|**TODO: Add a useful description.**|
|[Create multiValueLegacyExtendedProperty](../api/mailboxfolder-post-multivalueextendedproperties.md)|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md)|Create a new multiValueLegacyExtendedProperty object.|
|[List singleValueExtendedProperties](../api/mailboxfolder-list-singlevalueextendedproperties.md)|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|**TODO: Add a useful description.**|
|[Create singleValueLegacyExtendedProperty](../api/mailboxfolder-post-singlevalueextendedproperties.md)|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md)|Create a new singleValueLegacyExtendedProperty object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childFolderCount|Int32|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|
|parentFolderId|String|**TODO: Add Description**|
|parentMailboxUrl|String|**TODO: Add Description**|
|totalItemCount|Int32|**TODO: Add Description**|
|type|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|childFolders|[mailboxFolder](../resources/mailboxfolder.md) collection|**TODO: Add Description**|
|items|[mailboxItem](../resources/mailboxitem.md) collection|**TODO: Add Description**|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|**TODO: Add Description**|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxFolder",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxFolder",
  "displayName": "String",
  "parentFolderId": "String",
  "parentMailboxUrl": "String",
  "childFolderCount": "Integer",
  "totalItemCount": "Integer",
  "type": "String",
  "id": "String (identifier)"
}
```

