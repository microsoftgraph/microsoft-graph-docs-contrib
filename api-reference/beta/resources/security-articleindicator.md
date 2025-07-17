---
title: "articleIndicator resource type"
description: "Represents a resource that communicates indicators of threat or compromise related to the contents of an article."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# articleIndicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a resource that communicates indicators of threat or compromise related to the contents of an [article](../resources/security-article.md).

The relationship from an **articleIndicator** to an [artifact](../resources/security-artifact.md) provides the means for threat intelligence API users to further evaluate details about reported indicator.

Inherits from [indicator](../resources/security-indicator.md).

## Methods

| Method                                                          | Return type                                                                            | Description                                                                                                      |
| :-------------------------------------------------------------- | :------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------- |
| [Get article indicator](../api/security-articleindicator-get.md) | [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) | Read the properties and relationships of a [articleIndicator](../resources/security-articleindicator.md) object. |

## Properties

| Property | Type                                     | Description                                                                                                                                                                                                                      |
| :------- | :--------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id       | String                                   | The system-generated ID for the **articleIndicator**. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md).                                                                                   |
| source   | microsoft.graph.security.indicatorSource | Communicates where this **articleIndicator** originated. The possible values are: `microsoft`, `osint`, `public`, `unknownFutureValue`. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md). |

## Relationships

| Relationship | Type                                                                   | Description                                                                                                                                                                               |
| :----------- | :--------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| artifact     | [microsoft.graph.security.artifact](../resources/security-artifact.md) | The [artifact](../resources/security-artifact.md) that is reported in this **articleIndicator**. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.articleIndicator",
  "baseType": "microsoft.graph.security.indicator",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.articleIndicator",
  "id": "String (identifier)",
  "source": "String"
}
```
