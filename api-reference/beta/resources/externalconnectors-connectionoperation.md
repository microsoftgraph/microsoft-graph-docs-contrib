---
title: "connectionOperation resource type"
description: "Describes status of an asynchronous request to create a Microsoft Search connection schema."
ms.localizationpriority: medium
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# connectionOperation resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes status of an asynchronous request to create a Microsoft Search connection [schema](externalconnectors-schema.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get connectionOperation](../api/externalconnectors-connectionoperation-get.md) | [connectionOperation](externalconnectors-connectionoperation.md) | Read properties of a connectionOperation object. |

## Properties

| Property | Type                          | Description                       |
|:---------|:------------------------------|:----------------------------------|
| error    | [publicError](publicerror.md) | If `status` is `failed`, provides more information about the error that caused the failure. |
| id       | String                        | Unique identifier for the connectionOperation. Read-only. |
| status   | String                        | Indicates the status of the asynchronous operation. Possible values are: `unspecified`, `inprogress`, `completed`, `failed`. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.connectionOperation",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connectionOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
