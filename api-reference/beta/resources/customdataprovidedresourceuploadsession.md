---
title: "customDataProvidedResourceUploadSession resource type"
description: "An upload session within which multiple files can be uploaded for this resource."
author: "jaylenemartinez0"
ms.date: 04/01/2026
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
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/customdataprovidedresource-post-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Create a new customDataProvidedResourceUploadSession object.|
|[List](../api/accesspackageresource-list-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection|Get a list of the customDataProvidedResourceUploadSession objects and their properties.|
|[Get](../api/customdataprovidedresourceuploadsession-get.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Read the properties and relationships of [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object.|
|[Upload file](../api/customdataprovidedresourceuploadsession-uploadfile.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Upload a file to a customDataProvidedResourceUploadSession object.|
|[Update](../api/customdataprovidedresourceuploadsession-update.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Update the properties of a customDataProvidedResourceUploadSession object.|
|[Delete](../api/accesspackageresource-delete-uploadsessions.md)|None|Delete a customDataProvidedResourceUploadSession object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|DateTime when the upload session was created. Read-only. Supports `$orderby`.|
|data|[customExtensionData](../resources/customextensiondata.md)|An object containing the context for which this data is being uploaded. Currently the only possible concrete type is [accessReviewResourceDataUploadSessionContextData](../resources/accessreviewresourcedatauploadsessioncontextdata.md)|
|id|String| Unique identifier of the upload session. Read-only.|
|isUploadDone|Boolean| Indicates if all the necessary files have been uploaded to this session.|
|referenceId|String|The ID of the context for which data is being uploaded, for example, the Access Review instance ID. Supports `$filter (`eq`)`.|
|source|String| The source of the access data. This should be set to the customdataprovidedresource's name when creating the session.|
|stats|[customDataProvidedResourceUploadStats](../resources/customdataprovidedresourceuploadstats.md)| Metadata about the files uploaded in this upload session thus far.|
|status|customDataProvidedResourceUploadStatus| Status of the upload session. The possible values are: `active`, `complete`, `expired`, `unknownFutureValue`. Supports `$filter (`eq`)`.|
|type|String| Schematized form of the expected CSV columns in the uploaded file. The only possible value currently is: `accessReviewDataUploadTriggerCallbackData`|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|files|[customDataProvidedResourceFile](../resources/customdataprovidedresourcefile.md) collection|The files uploaded during this upload session. Supports `$expand` and `$expand` with nested `$filter` and `$orderby`.|

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
  "referenceId": "String",
  "data": {
    "@odata.type": "microsoft.graph.customExtensionData"
}
```
