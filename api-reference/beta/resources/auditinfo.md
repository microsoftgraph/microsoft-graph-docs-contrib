---
title: "auditInfo resource type"
description: "Audit information "
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft.informationprotection"
doc_type: "resourcePageType"
---

# auditInfo resource type

[!INCLUDE beta-disclaimer]

PROVIDE DESCRIPTION HERE

## Properties

| Property                | Type                                       | Description |
| :---------------------- | :----------------------------------------- | :---------- |
| isAuditDiscoveryEnabled | Boolean                                    |             |
| metadata                | [keyValuePair](keyvaluepair.md) collection |             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.auditInfo",
  "baseType": null
}-->

```json
{
  "isAuditDiscoveryEnabled": true,
  "metadata": [{"@odata.type": "microsoft.graph.keyValuePair"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "auditInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->