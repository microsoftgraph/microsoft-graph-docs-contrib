---
title: "conditionalAccessDevices resource type"
description: "Represents devices in the scope of a conditionalAccessTemplate object."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessDevices resource type

Namespace: microsoft.graph

Represents devices in the scope of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object. This resource is configured in the **conditionalAccessTemplate** resource > **details** property > **conditions** property > **devices** property.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| deviceFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter that defines the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "deviceFilter"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessDevices",
  "baseType": null
}-->

```json
{
  "deviceFilter": {"@odata.type": "microsoft.graph.conditionalAccessFilter"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessDevices resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


