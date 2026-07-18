---
title: "customDataProvidedResourceAccessReviewUploadSession resource type"
description: "Represents a concrete upload session for access review scenarios on a custom data provided resource."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceAccessReviewUploadSession resource type

Namespace: microsoft.graph

Represents an upload session for access review scenarios on an [accessPackageResource](../resources/accesspackageresource.md). Use this type when uploading external access data for access reviews via the Bring Your Own Data (BYOD) flow.

Inherits from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).

## Methods

This derived type supports the same methods as the base [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) resource. For the list of supported operations, see the base type documentation.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|DateTime when the upload session was created. Read-only. Supports `$orderby`. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|data|[microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md)|An object containing the context for which this data is being uploaded. For access review upload sessions, this is of type [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData](../resources/customdataprovidedresourcepayloads-accessreviewcontextdata.md). Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|id|String|Unique identifier of the upload session. Read-only. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|isUploadDone|Boolean|Indicates if all the necessary files have been uploaded to this session. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|referenceId|String|The ID of the context for which data is being uploaded, for example, the access review instance ID. Supports `$filter (eq)`. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|stats|[customDataProvidedResourceUploadStats](../resources/customdataprovidedresourceuploadstats.md)|Metadata about the files uploaded in this upload session thus far. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|
|status|customDataProvidedResourceUploadStatus|Status of the upload session. The possible values are: `active`, `complete`, `expired`, `unknownFutureValue`. Supports `$filter (eq)`. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|files|[customDataProvidedResourceFile](../resources/customdataprovidedresourcefile.md) collection|The files uploaded during this upload session. Supports `$expand` and `$expand` with nested `$filter` and `$orderby`. Inherited from [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "baseType": "microsoft.graph.customDataProvidedResourceUploadSession",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
  "id": "String (identifier)",
  "status": "String",
  "isUploadDone": "Boolean",
  "stats": {
    "@odata.type": "microsoft.graph.customDataProvidedResourceUploadStats"
  },
  "createdDateTime": "String (timestamp)",
  "referenceId": "String",
  "data": {
    "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData"
  }
}
```
