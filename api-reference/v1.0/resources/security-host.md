---
title: "host resource type"
description: "Represents a hostname or IP address that is currently or was previously available on the internet and Microsoft Defender Threat Intelligence has detected."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# host resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a [hostname](../resources/security-hostname.md) or [IP address](../resources/security-ipaddress.md) that is currently or was previously available on the internet and Microsoft Defender Threat Intelligence has detected.

This is an abstract type. Implementations of this type include:

- [hostname](../resources/security-hostname.md)
- [ipAddress](../resources/security-ipaddress.md)

Inherits from [artifact](../resources/security-artifact.md).

## Methods

| Method                                                                   | Return type                                                                                       | Description                                                                                                       |
| :----------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------- |
| [Get host](../api/security-host-get.md)                                  | [microsoft.graph.security.host](../resources/security-host.md)                                    | Read the properties and relationships of a [host](../resources/security-host.md) object. |
| [Get whoisRecord](../api/security-whoisrecord-get.md)          | [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md)                      | Get the specified [whoisRecord](../resources/security-whoisrecord.md) resource. |
| [List childHostPairs for a host as parent](../api/security-host-list-childhostpairs.md)       | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                 | Get a list of **hostPair** resources.                                                                             |
| [List hostPairs for a host](../api/security-host-list-hostpairs.md)                 | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                 | Get a list of **hostPair** resources.                                                                             |
| [List components](../api/security-host-list-components.md)               | [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection       | Get a list of **hostComponent** resources.                                                                        |
| [List cookies](../api/security-host-list-cookies.md)                     | [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection             | Get a list of **hostCookie** resources.                                                                           |
| [List parentHostPairs for a host as child](../api/security-host-list-parenthostpairs.md)     | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                 | Get a list of **hostPairs** resources.                                                                            |
| [List passiveDns](../api/security-host-list-passivedns.md)               | [microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection | Get a list of **passiveDnsRecord** resources.                                                                     |
| [List passiveDnsReverse](../api/security-host-list-passivednsreverse.md) | [microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection | Get a list of **passiveDnsRecord** resources from a reverse passive DNS retrieval.                                                                      |
| [List ports](../api/security-host-list-ports.md)                            | [microsoft.graph.security.hostPort](../resources/security-hostport.md) collection              | Get a list of **hostPort** resources.                                                                             |
| [Get reputation](../api/security-host-get-reputation.md)                 | [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)                | Get the properties and relationships of a **hostReputation** object.                                              |
| [List subdomains](../api/security-host-list-subdomains.md)               | [microsoft.graph.security.subdomain](../resources/security-subdomain.md) collection               | Get a list of **subdomain** resources.                                                                            |
| [List trackers](../api/security-host-list-trackers.md)                   | [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection           | Get a list of **hostTracker** resources.                                                                          |
| [List hostSslCertificates](../api/security-host-list-sslcertificates.md)                   | [microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md) collection           | Get a list of [hostSslCertificate](../resources/security-hostsslcertificate.md) objects from the [host](../resources/security-host.md) navigation property.                                | 

## Properties

| Property          | Type           | Description                                                                                                                                                                                                                             |
| :---------------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| firstSeenDateTime | DateTimeOffset | The first date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.       |
| id                | String         | Unique identifier for the host. Read-only. Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).                                                                                                       |
| lastSeenDateTime  | DateTimeOffset | The most recent date and time when this host was observed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |

## Relationships

| Relationship      | Type                                                                                              | Description                                                |
|:------------------|:------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------|
| childHostPairs    | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                     | The **hostPairs** that are resources associated with a host, where that host is the **parentHost** and has an outgoing pairing to a **childHost**. |
| components        | [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection       | The **hostComponents** that are associated with this host. |
| cookies           | [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection             | The **hostCookies** that are associated with this host.    |
| hostPairs         | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                     | The **hostPairs** that are associated with this host, where this host is either the **parentHost** or **childHost**.                             |
| parentHostPairs   | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                     | The **hostPairs** that are associated with a host, where that host is the **childHost** and has an incoming pairing with a **parentHost**.         |
| passiveDns        | [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection | Passive DNS retrieval about this host.                     |
| passiveDnsReverse | [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection | Reverse passive DNS retrieval about this host.             |
| ports             | [microsoft.graph.security.hostPort](../resources/security-hostport.md) collection                     | The **hostPorts** associated with a host.                                                                                                      |
| reputation        | [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)                | Represents a calculated reputation of this host.           |
| sslCertificates   | [microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md) collection | The **hostSslCertificates** that are associated with this host.                                                                                |
| subdomains        | [microsoft.graph.security.subdomain](../resources/security-subdomain.md) collection                   | The **subdomains** that are associated with this host.                                                                                         |
| trackers          | [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection           | The **hostTrackers** that are associated with this host.   |
| whois             | [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md)                          | The most recent **whoisRecord** for this host.                                                                                                 |

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

```json
{
  "@odata.type": "#microsoft.graph.security.host",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)"
}
```
