---
title: "hostCookie resource type"
description: "Cookies are small pieces of data sent from a server to a client as the user browses the internet."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostCookie resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cookies are small pieces of data sent from a server to a client as the user browses the internet. These values sometimes contain a state for the application or little bits of tracking data. Threat Intelligence highlights and indexes cookie names observed when crawling a website and allows users to dig into everywhere we have observed specific cookie names across its crawling and data collection. Cookies are also used by malicious actors to keep track of infected victims or store data to be used later.

These `HostCookie` Entities have specifically been observed against the related [microsoft.graph.security.host](../resources/security-host.md).

Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get hostCookie](../api/security-hostcookie-get.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Read the properties and relationships of a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|The the URI for which the Cookie is valid.|
|firstSeenDateTime|DateTimeOffset|The first date and time that this `hostCookie` was observed by Microsoft Threat Intelligence.|
|id|String|A system-generated id for this `hostCookie`.  Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this `hostCookie` was observed by Microsoft Threat Intelligence.|
|name|String|The name of the Cookie (e.g. JSESSIONID, SEARCH_NAMESITE).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostCookie",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostCookie",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String",
  "domain": "String"
}
```

