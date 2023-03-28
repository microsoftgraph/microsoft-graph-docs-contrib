---
title: "ipAddress resource type"
description: "Represents an IP address which is (or has been) addressable over the internet."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# ipAddress resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an IP address which is (or has been) addressable over the internet. This resource acts as a grouping mechanism for related details about the hostname or IP address, such as the reputation, any related trackers or cookies, and so on.

You cannot retrieve this type directly. To access it, retrieve the [host](../resources/security-host.md) resource.

Inherits from [host](../resources/security-host.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List components](../api/security-host-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get a list of  **hostComponent** resources.|
|[List cookies](../api/security-host-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get a list of **hostCookie** resources.|
|[List passiveDns](../api/security-host-list-passivedns.md)|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Get a list of **passiveDnsRecord** resources.|
|[List passiveDnsReverse](../api/security-host-list-passivednsreverse.md)|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Get a list of **passiveDnsRecord** resources.|
|[Get reputation](../api/security-host-get-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) |Get a list of **hostReputation** resources.|
|[List trackers](../api/security-host-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get a list of **hostTracker** resources.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autonomousSystem|[microsoft.graph.security.autonomousSystem](../resources/security-autonomoussystem.md)|The details about the autonomous system to which this IP address belongs.|
|countryOrRegion|String|The country or region for this IP address.|
|firstSeenDateTime|DateTimeOffset|The first date and time when this [host](../resources/security-host.md) was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|hostingProvider|String|The hosting company listed for this [host](../resources/security-host.md).|
|id|String| The IP Address for this [host](../resources/security-host.md). Read-only. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this [host](../resources/security-host.md) was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|netblock|String|The block of IP addresses this IP address belongs to.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|The **hostComponents** that are associated with this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|The **hostCookies** that are associated with this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|passiveDns|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Passive DNS retrieval about this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|passiveDnsReverse|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection| Reverse passive DNS retrieval about this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|reputation|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Represents a calculated reputation of this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|The **hostTrackers** that are associated with this host. Inherited from [microsoft.graph.security.host](../resources/security-host.md).|

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
