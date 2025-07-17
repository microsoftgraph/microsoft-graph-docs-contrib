---
title: "conditionalAccessDevices resource type"
description: "Represents devices in the scope of a conditionalAccessTemplate object."
ms.localizationpriority: medium
author: "SanDeo-MSFT"
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/29/2024
---

# conditionalAccessDevices resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents devices in the scope of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object. This resource is configured in the **conditionalAccessTemplate** resource > **details** property > **conditions** property > **devices** property.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeDevices | String collection | States in the scope of the policy. `All` is the only allowed value. Cannot be set if **deviceFilter** is set. |
| excludeDevices | String collection | States excluded from the scope of the policy. Possible values: `Compliant`, `DomainJoined`. Cannot be set if **deviceFIlter** is set. |
| deviceFilter | [conditionalAccessFilter](conditionalaccessfilter.md) | Filter that defines the dynamic-device-syntax rule to include/exclude devices. A filter can use device properties (such as extension attributes) to include/exclude them. Cannot be set if **includeDevices** or **excludeDevices** is set. |
| includeDeviceStates (deprecated)| String collection | States in the scope of the policy. `All` is the only allowed value. |
| excludeDeviceStates (deprecated)| String collection | States excluded from the scope of the policy. Possible values: `Compliant`, `DomainJoined`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeDevices",
    "excludeDevices",
    "deviceFilter"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessDevices",
  "baseType": null
}-->

```json
{
  "includeDevices": [ "String" ],
  "excludeDevices": [ "String" ],
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


