---
title: "customDataProvidedResourceFile resource type"
description: "Object containing metadata about files uploaded in an upload session."
author: "pratima-cloudknox"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceFile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file that was uploaded in a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the file that was uploaded.|
|size|Int64|Size of the uploaded file in bytes.|
|uploadedDateTime|DateTimeOffset|Time at which the file was uploaded.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.customDataProvidedResourceFile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceFile",
  "name": "String (identifier)",
  "size": "Integer",
  "uploadedDateTime": "String (timestamp)"
}
```

