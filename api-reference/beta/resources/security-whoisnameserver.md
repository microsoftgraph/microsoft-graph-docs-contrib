---
title: "whoisNameserver resource type"
description: "Represents a nameserver associated with a whoisRecord."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# whoisNameserver resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a nameserver associated with a [whoisRecord](../resources/security-whoisrecord.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first seen date and time of this WHOIS contact. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|lastSeenDateTime|DateTimeOffset|The last seen date and time of this WHOIS contact. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The host of the nameserver.|

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
