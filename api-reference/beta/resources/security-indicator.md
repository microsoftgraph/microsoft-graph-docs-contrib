---
title: "indicator resource type"
description: "Indicators communicate artifacts usually indicating affection by or relation to an attack vector or malicious actor."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# indicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicators communicate artifacts usually indicating affection by or relation to an attack vector or malicious actor.

This is an abstract type, representing an indicator of compromise or increased risk. This EntityType is not directly addressible. Users would interact through one of the following sub types:
* [ArticleIndicator](../resources/security-articleindicator.md)
* [IntelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The system-generated id for the indicator.|
|source|microsoft.graph.security.indicatorSource|The source providing this Indicator.The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[microsoft.graph.security.artifact](../resources/security-artifact.md)|The artifact related to this Indicator.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.indicator",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.indicator",
  "id": "String (identifier)",
  "source": "String"
}
```

