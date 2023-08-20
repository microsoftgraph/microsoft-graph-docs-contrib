---
title: "hostPair resource type"
description: "Represents a pair of parent-child hosts in which the child host able to be reached via the parent host."
author: "jakedavies-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostPair resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a pair of parent-child hosts in which the child host is able to be reached via the parent host. For example, if contoso.com redirects to microsoft.com, then contoso.com would be the parent host and microsoft.com the child host.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get hostPair](../api/security-hostpair-get.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md)|Read the properties and relationships of a **hostPair** object.|
|[List childHostPairs for a host](../api/security-host-list-childhostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a host, where that host is the *parent* and has an outgoing pairing to a *child*.|
|[List hostPairs for a host](../api/security-host-list-hostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a host, where the host is either the parent *or* child.|
|[List parentHostPairs for a host](../api/security-host-list-parenthostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of **hostPair** objects associated with a host, where that host is the *child* and has an incoming pairing with a *parent*.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time when Microsoft Defender Threat Intelligence observed the hostPair. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.|
|id|String|A system-generated ID for the hostPair.|
|lastSeenDateTime|DateTimeOffset|The last date and time when Microsoft Defender Threat Intelligence observed the hostPair. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, is 2014-01-01T00:00:00Z.|
|linkKind|String|The reason the two hosts are identified as hostPairs.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|childHost|[microsoft.graph.security.host](../resources/security-host.md)|Host reached via the parentHost.|
|parentHost|[microsoft.graph.security.host](../resources/security-host.md)|Host used to reach the childHost.|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "linkKind": "String",
  "parentHost": {
    "@odata.type": "#microsoft.graph.security.host",
    "id": "String (identifier)"
  },
  "childHost": {
    "@odata.type": "#microsoft.graph.security.host",
    "id": "String (identifier)"
  }
}
```

