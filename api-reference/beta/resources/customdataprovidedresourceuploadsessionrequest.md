---
title: "customDataProvidedResourceUploadSessionRequest resource type"
description: "Request object used to create an upload session"
author: "pratima-cloudknox"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# customDataProvidedResourceUploadSessionRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The request object used to create a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|data|[customExtensionData](./customExtensionData.md)|An object containing the context for which this data is being uploaded. Currently the only allowed value is [accessReviewResourceDataUploadSessionContextData](../resources/accessreviewresourcedatauploadsessioncontextdata.md)|
|source|String| The name of the CustomDataProvidedResource|
|type|String| The schema of the data that is expected in the CSV uploads in this session. The only currently supported value is `#microsoft.graph.accessReviewDataUploadTriggerCallbackData`|

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
  "source": "String",
  "type": "String",
  "data": {
    "@odata.type": "microsoft.graph.accessReviewResourceDataUploadSessionContextData"
  }
}
```

