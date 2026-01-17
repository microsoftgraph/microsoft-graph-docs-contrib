---
title: "initiator resource type"
description: "Represents information about who or what initiated the provisioning event."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# initiator resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about who or what initiated the provisioning event. Inherits from [identity](../resources/identity.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|The name of the person or service that initiated the provisioning event. Inherited from [identity](../resources/identity.md).|
|id|String|The unique identifier for the person or service that initiated the provisioning event. Inherited from [identity](../resources/identity.md).|
|initiatorType|String| The type of the initiator. The possible values are: `user`, `application`, `system`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.initiator",
  "baseType": "microsoft.graph.identity"
}-->

```json
{
  "displayName": "String",
  "id": "String",
  "initiatorType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "initiator resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


