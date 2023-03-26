---
title: "ipAddress resource type"
description: "Represents an IP Address which is (or has been) addressible over the internet"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# ipAddress resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an IP Address which is (or has been) addressible over the internet. This entity acts as a grouping mechanism for related details about the Hostname or IP Address, such as the reputation, any related trackers or cookies, etc.

This type does not support direct retrievals. Users should leverage access through the [microsoft.graph.security.host](../resources/security-host.md) type.

Inherits from [microsoft.graph.security.host](../resources/security-host.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List components](../api/security-host-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[List cookies](../api/security-host-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[List passiveDns](../api/security-host-list-passivedns.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get the passiveDnsRecord resources from the passiveDns navigation property.|
|[List passiveDnsReverse](../api/security-host-list-passivednsreverse.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get the passiveDnsRecord resources from the passiveDnsReverse navigation property.|
|[Get reputation](../api/security-host-get-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) |Get the hostReputation resources from the reputation navigation property.|
|[List trackers](../api/security-host-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resources from the trackers navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autonomousSystem|[microsoft.graph.security.autonomousSystem](../resources/security-autonomoussystem.md)|The details about the Autonomous System to which this IP Address belongs.|
|countryOrRegion|String|The country or region for this IP Address.|
|firstSeenDateTime|DateTimeOffset|The first date and time that this [host](../resources/security-host.md) was observed|
|hostingProvider|String|The hosting company listed for this [host](../resources/security-host.md)|
|id|String| The IP Address for this [host](../resources/security-host.md). Read-only|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this [host](../resources/security-host.md) was observed|
|netblock|String|The block of IP Addresses this IP Address belongs to.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|`hostComponents` that are associated with this [host](../resources/security-host.md)|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|`hostCookies` that are associated with this [host](../resources/security-host.md)|
|passiveDns|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Passive DNS retrieval about this [host](../resources/security-host.md)|
|passiveDnsReverse|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection| Reverse Passive DNS retrieval about this [host](../resources/security-host.md).|
|reputation|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Represents a calculated reputation of this [host](../resources/security-host.md)|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|`hostTrackers` that are associated with this [host](../resources/security-host.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ipAddress",
  "baseType": "microsoft.graph.security.host",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ipAddress",
  "autonomousSystem": {
    "@odata.type": "microsoft.graph.security.autonomousSystem"
  },
  "countryOrRegion": "String",
  "firstSeenDateTime": "String (timestamp)",
  "hostingProvider": "String",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "netblock": "String"
}
```

