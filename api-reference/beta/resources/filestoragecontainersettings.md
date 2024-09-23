---
title: "fileStorageContainerSettings resource type"
description: "Represents the specific settings of a file storage container resource."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] 

Represents the settings of a [fileStorageContainer](../resources/filestoragecontainer.md) object.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isOcrEnabled|Boolean|Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is `false`. If OCR is enabled on a container, OCR extraction will be performed for recently added/updated document (select supported document types) and add the extracted fields in metadata of document which enables end-user search and search-driven solutions. Optional. Read-write.|
|itemMajorVersionLimit|Int32|The maximum major versions allowed for items in the container. Optional. Read-write.|
|isItemVersioningEnabled|Boolean|Indicates whether versioning is enabled for items in the container. Optional. Read-write.|

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
  "isOcrEnabled": true,
  "itemMajorVersionLimit": 1,
  "isItemVersioningEnabled": true
}
```

