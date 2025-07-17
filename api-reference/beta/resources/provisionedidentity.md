---
title: "provisionedIdentity resource type"
description: "Describes the identity associated with the provisioning object summary event."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 03/21/2024
---

# provisionedIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the identity associated with the provisioning object summary event. Inherits from [identity](../resources/identity.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|details|[detailsInfo](detailsinfo.md)|Details of the identity.|
|displayName|String|Display name of the identity. Inherited from [identity](../resources/identity.md). Supports `$filter` (`eq`, `contains`).|
|id|String|Uniquely identifies the identity. Inherited from [identity](../resources/identity.md). Supports `$filter` (`eq`, `contains`).|
|identityType|String|Type of identity that has been provisioned, such as 'user' or 'group.' Supports `$filter` (`eq`, `contains`).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisionedIdentity",
  "baseType": "microsoft.graph.identity"
}-->

```json
{
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  },
  "displayName": "String",
  "id": "String",
  "identityType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisionedIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


