---
title: "hostComponent resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostComponent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Web components are details describing a web page or server infrastructure gleaned from Microsoft performing a web crawl or scan. These components allow a user to understand the makeup of a webpage or the technology and services driving a specific piece of infrastructure. Pivoting on unique components can find actors' infrastructure or other sites that are compromised. Users can also understand if a website might be vulnerable to a specific attack or compromise based on the technologies that it is running.

These `HostComponent` Entities have specifically been observed against the related [microsoft.graph.security.host](../resources/security-host.md).


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get hostComponent](../api/security-hostcomponent-get.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Read the properties and relationships of a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|String| The type of component that was detected (e.g. Operating System, Framework, Remote Access, Server).|
|firstSeenDateTime|DateTimeOffset|The first date and time that this web Component was observed by Microsoft Threat Intelligence.|
|id|String|A system-generated id for this `hostComponent`. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this web Component was observed by Microsoft Threat Intelligence.|
|name|String|A name  running on the artifact (e.g. Microsoft IIS).|
|version|String|The component version running on the artifact (e.g. v8.5). This should not be assumed to be strictly numerical|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|The [host](../resources/security-host.md) related to this component. This is a reverse Navigation Property. When navigating to Components from a [host](../resources/security-host.md), this should be assumed to be a return reference.|

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
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String",
  "version": "String",
  "category": "String"
}
```

