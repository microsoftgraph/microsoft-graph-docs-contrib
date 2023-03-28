---
title: "indicator resource type"
description: "An abstract type that represents an indicator of compromise or increased risk."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# indicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an indicator of compromise or increased risk. Indicators communicate artifacts that indicate that an asset was affected by or related to an attack vector or malicious actor.

This resource is not directly addressable. You can interact with this resource through one of the following subtypes:

* [articleIndicator](../resources/security-articleindicator.md)
* [intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The system-generated ID for the **indicator**.|
|source|microsoft.graph.security.indicatorSource|The source that provides this **indicator**. The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[microsoft.graph.security.artifact](../resources/security-artifact.md)|The artifact related to this **indicator**.|

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
