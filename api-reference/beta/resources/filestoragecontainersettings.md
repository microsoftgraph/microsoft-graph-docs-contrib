---
title: "fileStorageContainerSettings resource type"
description: "Represents the settings of a fileStorageContainer."
author: "vibehavjha"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 09/27/2024
---

# fileStorageContainerSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] 

Represents the settings of a [fileStorageContainer](../resources/filestoragecontainer.md) object.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|isItemVersioningEnabled|Boolean|Indicates whether versioning is enabled for items in the container. Optional. Read-write.|
|isOcrEnabled|Boolean|Indicates whether Optical Character Recognition (OCR) is enabled for the container. The default value is `false`. When set to `true`, OCR extraction is performed for new and updated documents of supported document types, and the extracted fields in the metadata of the document enable end-user search and search-driven solutions. When set to `false`, existing OCR metadata is not impacted. Optional. Read-write.|
|itemDefaultSensitivityLabelId|String|The ID of the default sensitivity label for items in the container. Optional. Read-write.|
|itemMajorVersionLimit|Int32|The maximum major versions allowed for items in the container. Optional. Read-write.|

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
  "isItemVersioningEnabled": "Boolean",
  "isOcrEnabled": "Boolean",
  "itemDefaultSensitivityLabelId": "String",
  "itemMajorVersionLimit": "Int32"
}
```

