---
title: "calloutRequest resource type"
description: "Represents the payload sent to a Logic App workflow when triggering a custom data provided resource upload."
author: "jaylenemartinez0"
ms.date: 05/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# calloutRequest resource type

Namespace: microsoft.graph.customDataProvidedResourcePayloads

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the payload sent to a customer-managed Logic App workflow when a [customDataProvidedResource](../resources/customdataprovidedresource.md) upload is triggered. The envelope includes identifiers for the source, catalog, and resource, along with a data payload that provides the context for the callout.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|catalogId|String|The unique identifier of the catalog that contains the custom data provided resource.|
|data|[microsoft.graph.customDataProvidedResourcePayloads.data](../resources/customdataprovidedresourcepayloads-data.md)|An object containing the context data for the callout, such as access review identifiers.|
|resourceId|String|The unique identifier of the custom data provided resource that the callout is for.|
|source|String|The source of the callout request, for example, `/identityGovernance/accessReviews`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.calloutRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.calloutRequest",
  "source": "String",
  "catalogId": "String",
  "resourceId": "String",
  "data": {
    "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.data"
  }
}
```

