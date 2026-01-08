---
title: "customDataProvidedResourceUploadStats resource type"
description: "Metadata related to the files that have been uploaded as part of a customDataProvidedResourceUploadSession. "
author: "pratima-cloudknox"
ms.date: 10/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceUploadStats resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata related to the files that were uploaded as part of a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md). 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|filesUploaded|Int32|Number of files uploaded in this session.|
|totalBytesUploaded|Int64|total bytes uploaded in this session|

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
  "filesUploaded": "Integer",
  "totalBytesUploaded": "Integer"
}
```

