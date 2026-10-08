---
title: "applyDecisionContextData resource type"
description: "Represents context data for applying access review decisions associated with a custom data provided resource."
author: "jaylenemartinez0"
ms.date: 05/18/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# applyDecisionContextData resource type

Namespace: microsoft.graph.customDataProvidedResourcePayloads

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents context data for the callback sent when batch apply decisions are triggered for a [customDataProvidedResource](../resources/customdataprovidedresource.md) in an access review. Contains the access review definition and instance identifiers so the callback receiver can correlate the batch apply result back to the specific review that initiated the operation.

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
  "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.applyDecisionContextData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.applyDecisionContextData",
  "reviewDefinitionId": "String",
  "reviewInstanceId": "String"
}
```


