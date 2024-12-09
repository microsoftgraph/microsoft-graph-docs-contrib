---
title: "mailboxItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mailboxItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [outlookItem](../resources/outlookitem.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/mailboxfolder-list-items.md)|[mailboxItem](../resources/mailboxitem.md) collection|Get a list of the mailboxItem objects and their properties.|
|[Create](../api/mailboxfolder-post-items.md)|[mailboxItem](../resources/mailboxitem.md)|Create a new mailboxItem object.|
|[Get](../api/mailboxitem-get.md)|[mailboxItem](../resources/mailboxitem.md)|Read the properties and relationships of a mailboxItem object.|
|[Update](../api/mailboxitem-update.md)|[mailboxItem](../resources/mailboxitem.md)|Update the properties of a mailboxItem object.|
|[Delete](../api/mailboxfolder-delete-items.md)|None|Delete a mailboxItem object.|
|[delta](../api/mailboxitem-delta.md)|[mailboxItem](../resources/mailboxitem.md) collection|**TODO: Add Description**|
|[List multiValueExtendedProperties](../api/mailboxitem-list-multivalueextendedproperties.md)|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|**TODO: Add a useful description.**|
|[Create multiValueLegacyExtendedProperty](../api/mailboxitem-post-multivalueextendedproperties.md)|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md)|Create a new multiValueLegacyExtendedProperty object.|
|[List singleValueExtendedProperties](../api/mailboxitem-list-singlevalueextendedproperties.md)|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|**TODO: Add a useful description.**|
|[Create singleValueLegacyExtendedProperty](../api/mailboxitem-post-singlevalueextendedproperties.md)|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md)|Create a new singleValueLegacyExtendedProperty object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|categories|String collection|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md).|
|changeKey|String|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md).|
|id|String|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [outlookItem](../resources/outlookitem.md).|
|size|Int64|**TODO: Add Description**|
|type|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection|**TODO: Add Description**|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxItem",
  "baseType": "microsoft.graph.outlookItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxItem",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "id": "String (identifier)",
  "type": "String",
  "size": "Integer"
}
```

