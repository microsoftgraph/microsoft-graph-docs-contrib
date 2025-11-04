---
title: "customDataProvidedResourceFile resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/29/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# customDataProvidedResourceFile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file that was uploaded in a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|
|uploadedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "name",
  "@odata.type": "microsoft.graph.customDataProvidedResourceFile",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customDataProvidedResourceFile",
  "name": "String (identifier)",
  "size": "Integer",
  "uploadedDateTime": "String (timestamp)"
}
```

