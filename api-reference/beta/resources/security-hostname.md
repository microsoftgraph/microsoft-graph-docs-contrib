---
title: "hostname resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# hostname resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.host](../resources/security-host.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostnames](../api/security-hostname-list.md)|[microsoft.graph.security.hostname](../resources/security-hostname.md) collection|Get a list of the [microsoft.graph.security.hostname](../resources/security-hostname.md) objects and their properties.|
|[Get hostname](../api/security-hostname-get.md)|[microsoft.graph.security.hostname](../resources/security-hostname.md)|Read the properties and relationships of a [microsoft.graph.security.hostname](../resources/security-hostname.md) object.|
|[Update hostname](../api/security-hostname-update.md)|[microsoft.graph.security.hostname](../resources/security-hostname.md)|Update the properties of a [microsoft.graph.security.hostname](../resources/security-hostname.md) object.|
|[Delete hostname](../api/security-hostname-delete.md)|None|Delete a [microsoft.graph.security.hostname](../resources/security-hostname.md) object.|
|[List components](../api/security-hostname-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[Add hostComponent](../api/security-hostname-post-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Add components by posting to the components collection.|
|[Remove components](../api/security-hostname-delete-components.md)|None|Remove a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[List cookies](../api/security-hostname-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[Add hostCookie](../api/security-hostname-post-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Add cookies by posting to the cookies collection.|
|[Remove cookies](../api/security-hostname-delete-cookies.md)|None|Remove a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[List passiveDns](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get the passiveDns resources from the passiveDns navigation property.|
|[Add passiveDns](../api/security-hostname-post-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Add passiveDns by posting to the passiveDns collection.|
|[Remove passiveDns](../api/security-hostname-delete-passivedns.md)|None|Remove a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[List passiveDnsReverse](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get the passiveDns resources from the passiveDnsReverse navigation property.|
|[Add passiveDns](../api/security-hostname-post-passivednsreverse.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Add passiveDnsReverse by posting to the passiveDnsReverse collection.|
|[Remove passiveDnsReverse](../api/security-hostname-delete-passivednsreverse.md)|None|Remove a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[List hostReputation](../api/security-host-list-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) collection|Get the hostReputation resources from the reputation navigation property.|
|[Create hostReputation](../api/security-hostname-post-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Create a new hostReputation object.|
|[List trackers](../api/security-hostname-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resources from the trackers navigation property.|
|[Add hostTracker](../api/security-hostname-post-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)|Add trackers by posting to the trackers collection.|
|[Remove trackers](../api/security-hostname-delete-trackers.md)|None|Remove a [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|registrant|String|**TODO: Add Description**|
|registrar|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|components|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|
|cookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|
|passiveDns|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|
|passiveDnsReverse|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|
|reputation|[hostReputation](../resources/security-hostreputation.md)|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|
|trackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostname",
  "baseType": "microsoft.graph.security.host",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostname",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "registrar": "String",
  "registrant": "String"
}
```

