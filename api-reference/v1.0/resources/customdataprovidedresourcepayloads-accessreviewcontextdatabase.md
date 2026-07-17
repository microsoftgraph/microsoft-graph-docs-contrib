---
title: "accessReviewContextDataBase resource type"
description: "Represents the abstract base for access review context data associated with a custom data provided resource."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewContextDataBase resource type

Namespace: microsoft.graph.customDataProvidedResourcePayloads

Represents the abstract base for access review context data associated with an [accessPackageResource](../resources/accesspackageresource.md). Contains the access review definition and instance identifiers that link the uploaded data to a specific review. This is an abstract type from which the following types are derived.

- [accessReviewContextData](../resources/customdataprovidedresourcepayloads-accessreviewcontextdata.md)
- [applyDecisionContextData](../resources/customdataprovidedresourcepayloads-applydecisioncontextdata.md)

Inherits from [microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|reviewDefinitionId|String|The unique identifier of the access review definition that this data is associated with.|
|reviewInstanceId|String|The unique identifier of the access review instance that this data is associated with.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextDataBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextDataBase",
  "reviewDefinitionId": "String",
  "reviewInstanceId": "String"
}
```
