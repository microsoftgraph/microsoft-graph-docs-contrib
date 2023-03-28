---
title: "intelligenceProfileIndicator resource type"
description: "Represents an indicator of threat or compromise related to the contents of an intelligenceProfile."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfileIndicator resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an indicator of threat or compromise related to the contents of an [intelligenceProfile](../resources/security-intelligenceprofile.md).

The relationship from an **intelligenceProfileIndicator** to an [artifact](../resources/security-artifact.md) provides the means for threat intelligence API users to further evaluate details about reported indicator.

Inherits from [microsoft.graph.security.indicator](../resources/security-indicator.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get intelligenceProfileIndicator](../api/security-intelligenceprofileindicator-get.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md)|Read the properties and relationships of a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset| Designate when an artifact was first used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.|
|id|String|A system generated ID for this **intelligenceProfileIndicator**. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md).|
|lastSeenDateTime|DateTimeOffset|Designate when an artifact was most recently used actively in an attack, when a particular sample was compiled, or if neither of those could be ascertained when the file was first seen in public repositories (for example, VirusTotal, ANY.RUN, Hybrid Analysis) or reported publicly.|
|source|microsoft.graph.security.indicatorSource|Communicates the source of this **intelligenceProfileIndicator**. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md). The possible values are: `microsoftDefenderThreatIntelligence`, `openSourceIntelligence`, `public`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[microsoft.graph.security.artifact](../resources/security-artifact.md)|The [artifact](../resources/security-artifact.md) that is reported in this **intelligenceProfileIndicator**. Inherited from [microsoft.graph.security.indicator](../resources/security-indicator.md).|

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
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "source": "String"
}
```
