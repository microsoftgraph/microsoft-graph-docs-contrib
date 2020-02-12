---
title: "serviceEndpoint resource type"
description: "The serviceEndpoint type"
localization_priority: Normal
author: "stephenjust"
ms.prod: "microsoft-ic3"
doc_type: "resourcePageType"
---

# serviceEndpoint resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The serviceEndpoint type. Represents a service endpoint in a call. The endpoint represents a
calling media server or other service entity. Inherits from [endpoint](callrecords-endpoint.md) type.

## Properties

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.serviceEndpoint",
  "baseType": "microsoft.graph.callRecords.endpoint"
}-->

```json
{
  "userAgent": {"@odata.type": "microsoft.graph.callRecords.userAgent"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "serviceEndpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->