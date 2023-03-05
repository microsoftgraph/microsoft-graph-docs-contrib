---
title: "intelligenceProfileIndicator resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfileIndicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.indicator](../resources/security-indicator.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List intelligenceProfileIndicators](../api/security-intelligenceprofile-list-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get a list of the [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) objects and their properties.|
|[Create intelligenceProfileIndicator](../api/security-intelligenceprofile-post-indicators.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Create a new [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|
|[Get intelligenceProfileIndicator](../api/security-intelligenceprofileindicator-get.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Read the properties and relationships of a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|
|[Update intelligenceProfileIndicator](../api/security-intelligenceprofileindicator-update.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Update the properties of a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|
|[Delete intelligenceProfileIndicator](../api/security-intelligenceprofile-delete-indicators.md)|None|Delete a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|
|[List artifact](../api/security-passivedns-list-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md) collection|Get the artifact resources from the artifact navigation property.|
|[Add artifact](../api/security-intelligenceprofileindicator-post-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Add artifact by posting to the artifact collection.|
|[Remove artifact](../api/security-intelligenceprofileindicator-delete-artifact.md)|None|Remove a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|source|microsoft.graph.security.indicatorSource|**TODO: Add Description** Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md).The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[artifact](../resources/security-artifact.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.intelligenceProfileIndicator",
  "baseType": "microsoft.graph.security.indicator",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.intelligenceProfileIndicator",
  "id": "String (identifier)",
  "source": "String",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)"
}
```

