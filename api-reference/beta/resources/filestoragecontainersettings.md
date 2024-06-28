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
|isOcrEnabled|Boolean|Flag indicating whether OCR is enabled or not for given container. If OCR is enabled on a container, OCR extraction will be performed for recently added/updated document (select supported document types) and add the extracted fields in metadata of document which enables end-user search and search-driven solutions|

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

