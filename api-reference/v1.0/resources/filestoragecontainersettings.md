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

Represents the settings of a [fileStorageContainer](../resources/filestoragecontainer.md) object.


## Properties

|Property|Type|Description|
|:---|:---|:---|
|isOcrEnabled|Boolean|Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is `false`. When set to `true`, OCR extraction is performed for new and updated documents of supported document types, and the extracted fields in the metadata of the document enable end-user search and search-driven solutions. When set to `false`, existing OCR metadata is not impacted. Optional. Read-write.|

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
