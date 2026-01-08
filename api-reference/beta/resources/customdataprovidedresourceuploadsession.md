---
title: "customDataProvidedResourceUploadSession resource type"
description: "An upload session within which multiple files can be uploaded for this resource."
author: "pratima-cloudknox"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceUploadSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) created on a [customDataProvidedResource](../resources/customdataprovidedresource.md). For more information, see [Include custom data provided resource in the catalog for catalog user Access Reviews (Preview)](/entra/id-governance/custom-data-resource-access-reviews).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type| Description|
|:---|:---|:--------------|
|[Create](../api/customdataprovidedresource-post-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)| Create a new customDataProvidedResourceUploadSession object.|
|[Get](../api/customdataprovidedresourceuploadsession-get.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)| Read the properties and relationships of [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object.|
|[Update](../api/customdataprovidedresourceuploadsession-update.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)| Update the properties of a customDataProvidedResourceUploadSession object.|
|[uploadFile](../api/customdataprovidedresourceuploadsession-uploadfile.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)| Upload a file in this upload session.|

## Properties
|Property|Type| Description |
|:---|:---|:------------|
|createdDateTime|DateTimeOffset| DateTime when the upload session was created. Read-only.|
|data|[customExtensionData](../resources/customextensiondata.md)|An object containing the context for which this data is being uploaded. Currently the only possible concrete type is [accessReviewResourceDataUploadSessionContextData](../resources/accessreviewresourcedatauploadsessioncontextdata.md)|
|id|String| Unique identifier of the upload session. Read-only.|
|isUploadDone|Boolean| Indicates if all the necessary files have been uploaded to this session.|
|source|String| The source of the access data. This should be set to the customdataprovidedresource's name when creating the session.|
|stats|[customDataProvidedResourceUploadStats](../resources/customdataprovidedresourceuploadstats.md)| Metadata about the files uploaded in this upload session thus far.|
|status|customDataProvidedResourceUploadStatus| Status of the upload session. The possible values are: `active`, `complete`, `expired`, `unknownFutureValue`.|
|type|String| Schematized form of the expected CSV columns in the uploaded file. The only possible value currently is: `accessReviewDataUploadTriggerCallbackData`|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataProvidedResourceUploadSession",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceUploadSession",
  "id": "String (identifier)",
  "status": "String",
  "isUploadDone": "Boolean",
  "stats": {
    "@odata.type": "microsoft.graph.customDataProvidedResourceUploadStats"
  },
  "createdDateTime": "String (timestamp)",
  "source": "String",
  "type": "String",
  "data": {
    "@odata.type": "microsoft.graph.customExtensionData"
  }
}
```

