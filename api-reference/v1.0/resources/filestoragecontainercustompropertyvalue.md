---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "Contains the custom property values stored in a fileStorageContainerCustomPropertyDictionary resource."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 09/25/2026
---

# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph

Contains the custom property values stored in a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md) resource.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isPatternToken|Boolean|Indicates whether **value** is a `urlTemplate` pattern (for example, a token such as `{itemId}` used to configure redirect behavior when opening files), rather than a literal value that consumers must resolve before use. Optional. The default value is `false`.|
|isSearchable|Boolean|Indicates whether the custom property is searchable. Optional. The default value is `false`.|
|value|String|Value of the custom property. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerCustomPropertyValue",
  "isPatternToken": "Boolean",
  "isSearchable": "Boolean",
  "value": "String"
}
```

