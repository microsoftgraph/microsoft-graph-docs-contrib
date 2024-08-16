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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings associated with a [fileStorageContainer](../resources/filestoragecontainer.md). 


## Properties

|Property|Type|Description|
|:---|:---|:---|
|isOcrEnabled|Boolean|Indicates whether OCR is enabled for a given container. If OCR is enabled on a container, OCR extraction is performed for recently added or updated documents (of supported document types) and the extracted fields are added to the metadata of the document. This enables end-user search and search-driven solutions.|

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

