---
title: "indicator resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# indicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List indicators](../api/security-indicator-list.md)|[microsoft.graph.security.indicator](../resources/security-indicator.md) collection|Get a list of the [microsoft.graph.security.indicator](../resources/security-indicator.md) objects and their properties.|
|[Get indicator](../api/security-indicator-get.md)|[microsoft.graph.security.indicator](../resources/security-indicator.md)|Read the properties and relationships of a [microsoft.graph.security.indicator](../resources/security-indicator.md) object.|
|[Update indicator](../api/security-indicator-update.md)|[microsoft.graph.security.indicator](../resources/security-indicator.md)|Update the properties of a [microsoft.graph.security.indicator](../resources/security-indicator.md) object.|
|[Delete indicator](../api/security-indicator-delete.md)|None|Delete a [microsoft.graph.security.indicator](../resources/security-indicator.md) object.|
|[List artifact](../api/security-passivedns-list-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md) collection|Get the artifact resources from the artifact navigation property.|
|[Add artifact](../api/security-indicator-post-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Add artifact by posting to the artifact collection.|
|[Remove artifact](../api/security-indicator-delete-artifact.md)|None|Remove a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|source|microsoft.graph.security.indicatorSource|**TODO: Add Description**.The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[artifact](../resources/security-artifact.md)|**TODO: Add Description**|

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

