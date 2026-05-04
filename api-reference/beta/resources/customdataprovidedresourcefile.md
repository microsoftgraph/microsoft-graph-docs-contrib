---
title: "customDataProvidedResourceFile resource type"
description: "Represents a file that is uploaded in a customDataProvidedResourceUploadSession"
author: "jaylenemartinez0"
ms.date: 04/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceFile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file uploaded as part of a custom data provided resource upload session for Access Reviews with bring-your-own-data (BYOD) capabilities. This resource contains metadata about uploaded CSV files including the file name, size, and upload timestamp.

Files are uploaded via the [uploadFile](../api/customdataprovidedresourceuploadsession-uploadfile.md) action on an upload session and are accessible by expanding the **files** navigation property on a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).

## Methods

This resource doesn't have direct methods. Access files through the **files** navigation property on [customDataProvidedResourceUploadSession](customdataprovidedresourceuploadsession.md) using `$expand=files`.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the file. Read-only.|
|name|String|Name of the uploaded file, including the file extension. Required.  Supports `$filter` (`eq`, `ne`)  and `$orderby`.|
|size|Int64|Size of the file in bytes. Read-only.  Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|
|uploadedDateTime|DateTimeOffset|Timestamp when the file was uploaded. Read-only.  Supports `$filter` (`eq`, `ne`, `gt`, `ge`, `lt`, `le`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataProvidedResourceFile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceFile",
  "id": "String (identifier)",
  "name": "String",
  "size": "Int64",
  "uploadedDateTime": "String (timestamp)"
}
```

