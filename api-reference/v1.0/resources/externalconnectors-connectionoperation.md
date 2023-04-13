---
title: "connectionOperation resource type"
description: "Describes status of an asynchronous request to create a Microsoft Search connection schema."
author: "mecampos"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# connectionOperation resource type

Namespace: microsoft.graph.externalConnectors



Describes status of an asynchronous request to create a Microsoft Search connection [schema](externalconnectors-schema.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get connectionOperation](../api/externalconnectors-connectionoperation-get.md)|[connectionOperation](../resources/externalconnectors-connectionoperation.md)|Read the properties and relationships of a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|publicError| If `status` is `failed`, provides more information about the error that caused the failure.|
|id|String| Unique identifier for the connectionOperation. Read-only. |
|status|microsoft.graph.externalConnectors.connectionOperationStatus| Indicates the status of the asynchronous operation. Possible values are: `unspecified`, `inprogress`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.connectionOperation",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "status": "String"
}
```

