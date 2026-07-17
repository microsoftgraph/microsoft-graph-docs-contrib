---
title: "customDataProvidedResourceUploadStats resource type"
description: "Metadata related to the files that have been uploaded as part of a customDataProvidedResourceUploadSession."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceUploadStats resource type

Namespace: microsoft.graph

Metadata related to the files that were uploaded as part of a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|filesUploaded|Int32|Number of files uploaded in this session.|
|totalBytesUploaded|Int64|Total bytes uploaded in this session.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customDataProvidedResourceUploadStats"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceUploadStats",
  "filesUploaded": "Int32",
  "totalBytesUploaded": "Int64"
}
```
