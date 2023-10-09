---
title: "fileStorageContainerCustomPropertyValue resource type"
description: "fileStorageContainerCustomPropertyValue resource type"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# fileStorageContainerCustomPropertyValue resource type

Namespace: microsoft.graph

> [!IMPORTANT]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported. To determine whether an API is available in v1.0, use the **Version** selector.


The **fileStorageContainerCustomPropertyValue** resource contains the custom propety values stored in a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md) resource.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isSearchable|Boolean|Indicator if the custom propety is searchable. Optional. The default value is False.|
|value|String|Value of the custom property. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerCustomPropertyValue",
  "value": "String",
  "isSearchable": "Boolean"
}
```

