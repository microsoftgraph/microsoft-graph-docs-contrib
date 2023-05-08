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

Represents a cookie, which is a small piece of data sent from a server to a client as the user browses the internet. These values sometimes contain a state for the application or little bits of tracking data. When Microsoft Defender Threat Intelligence crawls a website, it indexes cookie names so users can search them. Cookies are also used by malicious actors to keep track of infected victims or to store data to be used later.

The **hostCookie** is associated with a [host](../resources/security-host.md) resource.

Inherits from [artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get hostCookie](../api/security-hostcookie-get.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Read the properties and relationships of a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domain|String|The URI for which the cookie is valid.|
|firstSeenDateTime|DateTimeOffset|The first date and time when this **hostCookie** was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|A system-generated ID for this **hostCookie**. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this **hostCookie** was observed by Microsoft Defender Threat Intelligence. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|name|String|The name of the cookie, for example, `JSESSIONID` or `SEARCH_NAMESITE`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|Indicates that a cookie of this name and domain was found related to this host.|

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
  "domain": "String",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String"
}
```
