---
title: "hostComponent resource type"
description: "Represents a web component that provides details about a web page or server infrastructure gleaned from a web crawl or scan."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostComponent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a web component that provides details about a web page or server infrastructure gleaned from a web crawl or scan. This information can be used to detect bad actors or sites that are compromised. It can also help users understand whether a site is vulnerable to a specific attack or compromise.

A host component is associated with a [host](../resources/security-host.md) resource.

Inherits from [artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get hostComponent](../api/security-hostcomponent-get.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Read the properties and relationships of a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String| The type of component that was detected (for example, `Operating System`, `Framework`, `Remote Access`, or `Server`).|
|firstSeenDateTime|DateTimeOffset|The first date and time when this web component was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|A system-generated ID for this **hostComponent**. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this web component was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|name|String|A name running on the artifact, for example, `Microsoft IIS`.|
|version|String|The component version running on the artifact, for example, `v8.5`. This should not be assumed to be strictly numerical.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The **host** related to this component. This is a reverse navigation property. When navigating to components from a **host**, this should be assumed to be a return reference.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostComponent",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostComponent",
  "category": "String",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String",
  "version": "String"
}
```
