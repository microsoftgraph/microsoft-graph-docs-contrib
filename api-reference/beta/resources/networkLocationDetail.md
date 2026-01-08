---
title: "networkLocationDetail resource type"
description: "Provides the name and type of network from which the user signed in."
ms.localizationpriority: medium
author: "egreenberg14"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# networkLocationDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the name and type of network from which the user signed in.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|networkNames|String collection|Provides the name of the network used when signing in.|
|networkType|networkType| Provides the type of network used when signing in. The possible values are: `intranet`, `extranet`, `namedNetwork`, `trusted`, `unknownFutureValue`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.networkLocationDetail",
  "baseType": null
}-->

```json
{
  "networkNames": ["String"],
  "networkType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkLocationDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

