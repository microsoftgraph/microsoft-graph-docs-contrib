---
title: "customDataProvidedResourceUploadSessionRequest resource type"
description: "Request object used to create an upload session"
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceUploadSessionRequest resource type

Namespace: microsoft.graph

The request object used to create a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|data|[microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md)|An object containing the context for which this data is being uploaded. For access review upload sessions, use [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData](../resources/customdataprovidedresourcepayloads-accessreviewcontextdata.md). Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customDataProvidedResourceUploadSessionRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceUploadSessionRequest",
  "data": {
    "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.data"
  }
}
```
