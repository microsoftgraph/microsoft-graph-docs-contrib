---
title: "provisionedIdentity resource type"
description: "Describes the identity associated with the provisioning object summary event."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 04/03/2024
---

# provisionedIdentity resource type

Namespace: microsoft.graph


Describes the identity associated with the provisioning object summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|details|[detailsInfo](detailsinfo.md)|Details of the identity.|
|displayName|String|Display name of the identity. Supports `$filter` (`eq`, `contains`). |
|id|String|Uniquely identifies the identity. Supports `$filter` (`eq`, `contains`).|
|identityType|String|Type of identity that has been provisioned, such as 'user' or 'group'. Supports `$filter` (`eq`, `contains`).|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisionedIdentity",
  "baseType": null
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


