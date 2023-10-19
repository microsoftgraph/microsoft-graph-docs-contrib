---
title: "fileStorageContainerCustomPropertyDictionary resource type"
description: "Represents a dictionary that stores the custom properties of a fileStorageContainer in key/value pairs."

author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# fileStorageContainerCustomPropertyDictionary resource type

Namespace: microsoft.graph

> [!IMPORTANT]
> APIs under the `/beta` version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported. To determine whether an API is available in v1.0, use the **Version** selector.

The **fileStorageContainerCustomPropertyDictionary** resource is a [dictionary](https://github.com/microsoft/api-guidelines/blob/vNext/graph/patterns/dictionary.md) storing custom properties of the fileStorageContainer in key/value pairs. 

Each custom property consists of keys (custom property names) and [fileStorageContainerCustomPropertyValue](../resources/filestoragecontainercustompropertyvalue.md) values (custom property values).


## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyDictionary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerCustomPropertyDictionary"
}
```

