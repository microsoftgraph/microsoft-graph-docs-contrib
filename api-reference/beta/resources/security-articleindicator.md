---
title: "articleIndicator resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# articleIndicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.indicator](../resources/security-indicator.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List articleIndicators](../api/security-article-list-indicators.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Get a list of the [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) objects and their properties.|
|[Get articleIndicator](../api/security-articleindicator-get.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md)|Read the properties and relationships of a [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The system-generated id for the articleIndicator|
|source|microsoft.graph.security.indicatorSource|Communicates where this indicator originated. The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[artifact](../resources/security-artifact.md)|This relationship |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.articleIndicator",
  "baseType": "microsoft.graph.security.indicator",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.articleIndicator",
  "id": "String (identifier)",
  "source": "String"
}
```

