---
title: "fileStorageContainerSettings resource type"
description: "Represents settings of a fileStorageContainer."
author: "vibehavjha"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerSettings resource type

Namespace: microsoft.graph

Represents settings associated with a [fileStorageContainer](../resources/filestoragecontainer.md). 


## Properties

|Property|Type|Description|
|:---|:---|:---|
|isOcrEnabled|Boolean|Indicates whether optical character recognition (OCR) is enabled for a given container. When OCR is enabled on a container, OCR extraction is performed for new and updated documents of supported types. The extracted fields are added to the metadata of the document, enabling end-user search and search-driven solutions. Changing this property from `true` to `false` doesn't remove OCR metadata that was created while it was `true`. Default value is `false`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. 


<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileStorageContainerSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerSettings",
  "isOcrEnabled": "Boolean"
}
```
