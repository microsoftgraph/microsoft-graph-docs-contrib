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

Represents an upload session created on a [customDataProvidedResource](../resources/customdataprovidedresource.md). This is an abstract type from which the following type is derived.

- [customDataProvidedResourceAccessReviewUploadSession](../resources/customdataprovidedresourceaccessreviewuploadsession.md)

For more information, see [Include custom data provided resource in the catalog for catalog user Access Reviews (Preview)](/entra/id-governance/custom-data-resource-access-reviews).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/customdataprovidedresource-post-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Create a new object type that is derived from **customDataProvidedResourceUploadSession**.|
|[List](../api/accesspackageresource-list-uploadsessions.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) collection|Get a list of objects that are derived from **customDataProvidedResourceUploadSession** and their properties.|
|[Get](../api/customdataprovidedresourceuploadsession-get.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Read the properties and relationships of an object type that is derived from **customDataProvidedResourceUploadSession**.|
|[Upload file](../api/customdataprovidedresourceuploadsession-uploadfile.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Upload a file to an object that is derived from **customDataProvidedResourceUploadSession**.|
|[Update](../api/customdataprovidedresourceuploadsession-update.md)|[customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)|Update the properties of an object type that is derived from **customDataProvidedResourceUploadSession**.|
|[Delete](../api/accesspackageresource-delete-uploadsessions.md)|None|Delete an object type that is derived from **customDataProvidedResourceUploadSession**.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|DateTime when the upload session was created. Read-only. Supports `$orderby`.|
|data|[microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md)|An object containing the context for which this data is being uploaded.|
|id|String|Unique identifier of the upload session. Read-only.|
|isUploadDone|Boolean|Indicates if all the necessary files have been uploaded to this session.|
|referenceId|String|The ID of the context for which data is being uploaded, for example, the Access Review instance ID. Supports `$filter (eq)`.|
|stats|[customDataProvidedResourceUploadStats](../resources/customdataprovidedresourceuploadstats.md)|Metadata about the files uploaded in this upload session thus far.|
|status|microsoft.graph.identityGovernance.customDataProvidedResourceUploadStatus|Status of the upload session. The possible values are: `active`, `complete`, `expired`, `unknownFutureValue`. Supports `$filter (eq)`.|

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
  "openType": false,
  "abstract": true
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
  "referenceId": "String",
  "data": {
    "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.data"
  }
}
```
