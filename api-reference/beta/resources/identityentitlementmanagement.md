---
title: "identity resource type (entitlement management)"
description: "Represents an identity of a user or other entity in entitlement management scenarios."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/17/2025
---

# Identity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity of a user or other entity in entitlement management scenarios. This resource is used in contexts such as related people in access package suggestions to provide identifying information about individuals.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | Unique identifier for the identity. Optional. |
| displayName | String | The display name of the identity. Optional. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identity"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identity",
  "id": "String (identifier)",
  "displayName": "String"
}
```