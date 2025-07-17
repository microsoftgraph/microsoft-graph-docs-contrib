---
title: "indicator resource type"
description: "An abstract type that represents an indicator of compromise or increased risk."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# indicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

An abstract type that represents an indicator of compromise or increased risk. Indicators communicate artifacts that indicate that an asset was affected by or related to an attack vector or malicious actor.

This resource isn't directly addressable. You can interact with this resource through one of the following subtypes:

- [articleIndicator](../resources/security-articleindicator.md)
- [intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)

## Properties

| Property | Type                                     | Description                                                                                                                 |
| :------- | :--------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------- |
| id       | String                                   | The system-generated ID for the **indicator**.                                                                              |
| source   | microsoft.graph.security.indicatorSource | The source that provides this **indicator**. The possible values are: `microsoft`, `osint`, `public`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                                   | Description                                 |
| :----------- | :--------------------------------------------------------------------- | :------------------------------------------ |
| artifact     | [microsoft.graph.security.artifact](../resources/security-artifact.md) | The artifact related to this **indicator**. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.indicator",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.indicator",
  "id": "String (identifier)",
  "source": "String"
}
```
