---
title: "host resource type"
description: "Represents a hostname or IP address that is currently or was previously available on the Internet and Microsoft Defender Threat Intelligence has detected."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# host resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [hostname](../resources/security-hostname.md) or [IP address](../resources/security-ipaddress.md) that is currently or was previously available on the Internet and Microsoft Defender Threat Intelligence has detected.

This is an abstract type. Implementations of this type include:

* [hostname](../resources/security-hostname.md)
* [ipAddress](../resources/security-ipaddress.md)

Inherits from [artifact](../resources/security-artifact.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get host](../api/security-host-get.md)|[microsoft.graph.security.host](../resources/security-host.md)|Read the properties and relationships of a [microsoft.graph.security.host](../resources/security-host.md) object.|
|[List components](../api/security-host-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get a list of  **hostComponent** resources.|
|[List cookies](../api/security-host-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get a list of **hostCookie** resources.|
|[List passiveDns](../api/security-host-list-passivedns.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get a list of **passiveDnsRecord** resources.|
|[List passiveDnsReverse](../api/security-host-list-passivednsreverse.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get a list of **passiveDnsRecord** resources.|
|[Get reputation](../api/security-host-get-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) |Get the properties and relationships of a **hostReputation** object.|
|[List trackers](../api/security-host-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get a list of **hostTracker** resources.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time when this host was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String| Unique identifier for the host. Read-only. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|The most recent date and time when this host was observed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|The **hostComponents** that are associated with this host.|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|The **hostCookies** that are associated with this host.|
|passiveDns|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Passive DNS retrieval about this host.|
|passiveDnsReverse|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection| Reverse passive DNS retrieval about this host.|
|reputation|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Represents a calculated reputation of this host.|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|The **hostTrackers** that are associated with this host.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.host",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.host",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)"
}
```
