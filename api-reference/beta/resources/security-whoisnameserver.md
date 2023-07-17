---
title: "whoisNameserver resource type"
description: "Represents a nameserver associated with a whoisrecord."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# whoisNameserver resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

A whoisNameserver represents a nameserver associated with a [whoisRecord](../resources/security-whoisrecord.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first seen date and time of this whois contact.|
|lastSeenDateTime|DateTimeOffset|The last seen date and time of this whois contact.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|The host of the nameserver.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.whoisNameserver"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.whoisNameserver",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)"
}
```
