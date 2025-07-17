---
title: "hostPair resource type"
description: "Represents a pair of parent-child hosts in which the child host able to be reached via the parent host."
author: "jakedavies-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# hostPair resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a pair of parent-child hosts in which the child host is able to be reached via the parent host. For example, if contoso.com redirects to microsoft.com, then contoso.com represents the parent host and microsoft.com the child host. 

Host pair relationships shared at an earlier point, or currently share a connection observed from a Microsoft crawl. A parent host leads to the child host perhaps through a simple top-level redirect (HTTP 302), or something more complex like an iframe or script source reference. In other instances, a web crawl may reveal odd behaviors such as host pair relationships between IP addresses and domains/hosts that go against DNS standards.

The **linkKind** property notes the reason to identify the hosts as a parent-child pair. An example of this may be `redirect`.

For more information about host pairs, see the Microsoft Defender Threat Intelligence documentation for [data sets](/defender/threat-intelligence/data-sets#host-pairs).


## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/security-hostpair-get.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md)|Read the properties and relationships of a **hostPair** object.|
|[List for a host](../api/security-host-list-hostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a specified host, where the host is either the parent *or* child.|
|[List for a host as child](../api/security-host-list-parenthostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a host, where that host is the *child* and has an incoming pairing with a *parent*.|
|[List for a host as parent](../api/security-host-list-childhostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a host, where that host is the *parent* and has an outgoing pairing to a *child*.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The date and time when Microsoft Defender Threat Intelligence first observed the **hostPair**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|A system-generated ID for the **hostPair**.|
|lastSeenDateTime|DateTimeOffset|The date and time when Microsoft Defender Threat Intelligence last observed the **hostPair**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|linkKind|String|The reason that two hosts are identified as **hostPair**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|childHost|[microsoft.graph.security.host](../resources/security-host.md)|Host reached via the **parentHost**.|
|parentHost|[microsoft.graph.security.host](../resources/security-host.md)|Host used to reach the **childHost**.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostPair",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.hostPair",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "linkKind": "String"
}
```
