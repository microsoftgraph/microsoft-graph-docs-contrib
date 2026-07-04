---
title: "data resource type"
description: "Represents the abstract base for data payloads associated with a custom data provided resource."
author: "jaylenemartinez0"
ms.date: 05/12/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# data resource type

Namespace: microsoft.graph.customDataProvidedResourcePayloads

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base for data payloads associated with a [customDataProvidedResource](../resources/customdataprovidedresource.md). This is an abstract type from which the following type is derived.

- [accessReviewContextDataBase](../resources/customdataprovidedresourcepayloads-accessreviewcontextdatabase.md)

In entitlement management, the derived types of this object are configured in the **data** property of:
- [customDataProvidedResourceAccessReviewUploadSession](../resources/customdataprovidedresourceaccessreviewuploadsession.md)
- [calloutRequest](../resources/customdataprovidedresourcepayloads-calloutrequest.md)
- [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md)
- [customDataProvidedResourceUploadSessionRequest](../resources/customdataprovidedresourceuploadsessionrequest.md)

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.customDataProvidedResourcePayloads.data"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourcePayloads.data"
}
```


