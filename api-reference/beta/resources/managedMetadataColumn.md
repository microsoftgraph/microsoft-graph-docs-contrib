---
author: swshriva
ms.author: swshriva
ms.date: 12/04/2019
title: ManagedMetadataColumn - OneDrive API
---
# ManagedMetadataColumn resource type

The **managedMetadataColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column's values contains taxonomy data.

## JSON representation

Here is a JSON representation of a **managedMetadataColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.managedMetadataColumn" } -->

```json
{
    "allowFillIn": true,
    "allowMultipleValues": true,
    "anchorId": "string",
    "displayTermPathInColumn": false,
    "isCustom": false,
    "termSetId": "string",
    "termStoreId": "string"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| **allowFillIn**    | boolean | Specifies whether users will be permitted to add values to the term set. (Only open term sets will allow 'Fill-in')
| **allowMultipleValues** | boolean | Specifies whether the column will allow more than one value
| **anchorId**       | string | Specifies the term guid whose children can be selected as column's value.
| **displayTermPathInColumn** | boolean | Specifies whether to display the entire term path or only the term label.
| **isCustom**       | boolean | Specifies whether termset in custom or managed.
| **termSetId**      | string | Guid of termset whose children can be selected as column's value.
| **termStoreId**    | string | Guid of term store.

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/managedMetadataColumn"
} -->
