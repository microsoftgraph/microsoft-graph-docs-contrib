---
title: "accessReviewContextData resource type"
description: "Represents context data for access review upload session scenarios associated with a custom data provided resource."
author: "jaylenemartinez0"
ms.date: 05/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewContextData resource type

Namespace: microsoft.graph.customDataProvidedResourcePayloads

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents context data for access review upload session scenarios associated with a [customDataProvidedResource](../resources/customdataprovidedresource.md). This type is used as the **data** payload when creating a [customDataProvidedResourceAccessReviewUploadSession](../resources/customdataprovidedresourceaccessreviewuploadsession.md) to specify which access review the uploaded data is for.

Inherits from [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextDataBase](../resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|reviewDefinitionId|String|The unique identifier of the access review definition that this data is associated with. Inherited from [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextDataBase](../resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase.md).|
|reviewInstanceId|String|The unique identifier of the access review instance that this data is associated with. Inherited from [microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextDataBase](../resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
  "reviewDefinitionId": "String",
  "reviewInstanceId": "String"
}
```


