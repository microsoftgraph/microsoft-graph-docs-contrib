---
title: "workforceIntegrationEncryption resource type"
description: "An encryption entity defining the protocol and secret for a workforce integration."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/26/2024
---

# workforceIntegrationEncryption resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An encryption entity defining the protocol and secret for a [workforceintegration](../resources/workforceintegration.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|protocol|String| Possible values are: `sharedSecret`, `unknownFutureValue`.|
|secret|String|Encryption shared secret.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workforceIntegrationEncryption",
  "baseType": null
}-->

```json
{
  "protocol": "String",
  "secret": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workforceIntegrationEncryption resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


