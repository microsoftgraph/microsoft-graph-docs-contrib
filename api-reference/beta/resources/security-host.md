---
title: "host resource type"
description: "Represents an Hostname or IP Address which is (or has been) addressible over the internet"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# host resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [Hostname](../resources/security-hostname.md) or [IP Address](../resources/security-ipaddress.md) which is (or has been) addressible over the internet and Microsoft Threat Intelligence has knowledge. 

This is an abstract type. Implementations of this type include:
* [microsoft.graph.security.hostname](../resources/security-hostname.md)
* [microsoft.graph.security.ipAddress](../resources/security-ipaddress.md)

Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get host](../api/security-host-get.md)|[microsoft.graph.security.host](../resources/security-host.md)|Read the properties and relationships of a [microsoft.graph.security.host](../resources/security-host.md) object.|
|[List components](../api/security-host-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[List cookies](../api/security-host-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[List passiveDns](../api/security-host-list-passivedns.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get the passiveDnsRecord resources from the passiveDns navigation property.|
|[List passiveDnsReverse](../api/security-host-list-passivednsreverse.md)|[microsoft.graph.security.passivednsrecord](../resources/security-passivednsrecord.md) collection|Get the passiveDnsRecord resources from the passiveDnsReverse navigation property.|
|[Get reputation](../api/security-host-get-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) |Get the hostReputation resources from the reputation navigation property.|
|[List trackers](../api/security-host-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resources from the trackers navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|The first date and time that this host was observed|
|id|String| The hostname or IP Address for this host. Read-only|
|lastSeenDateTime|DateTimeOffset|The most recent date and time that this host was observed|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|`hostComponents` that are associated with this host|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|`hostCookies` that are associated with this host|
|passiveDns|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Passive DNS retrieval about this host|
|passiveDnsReverse|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection| Reverse Passive DNS retrieval about this host.|
|reputation|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Represents a calculated reputation of this host|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|`hostTrackers` that are associated with this host|

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
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)"
}
```

