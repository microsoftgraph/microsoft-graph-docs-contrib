---
title: "ipAddress resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ipAddress resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.host](../resources/security-host.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ipAddresses](../api/security-ipaddress-list.md)|[microsoft.graph.security.ipAddress](../resources/security-ipaddress.md) collection|Get a list of the [microsoft.graph.security.ipAddress](../resources/security-ipaddress.md) objects and their properties.|
|[Get ipAddress](../api/security-ipaddress-get.md)|[microsoft.graph.security.ipAddress](../resources/security-ipaddress.md)|Read the properties and relationships of a [microsoft.graph.security.ipAddress](../resources/security-ipaddress.md) object.|
|[Update ipAddress](../api/security-ipaddress-update.md)|[microsoft.graph.security.ipAddress](../resources/security-ipaddress.md)|Update the properties of a [microsoft.graph.security.ipAddress](../resources/security-ipaddress.md) object.|
|[Delete ipAddress](../api/security-ipaddress-delete.md)|None|Delete a [microsoft.graph.security.ipAddress](../resources/security-ipaddress.md) object.|
|[List components](../api/security-hostname-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get the hostComponent resources from the components navigation property.|
|[Add hostComponent](../api/security-ipaddress-post-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Add components by posting to the components collection.|
|[Remove components](../api/security-ipaddress-delete-components.md)|None|Remove a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[List cookies](../api/security-hostname-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get the hostCookie resources from the cookies navigation property.|
|[Add hostCookie](../api/security-ipaddress-post-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Add cookies by posting to the cookies collection.|
|[Remove cookies](../api/security-ipaddress-delete-cookies.md)|None|Remove a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[List passiveDns](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get the passiveDns resources from the passiveDns navigation property.|
|[Add passiveDns](../api/security-ipaddress-post-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Add passiveDns by posting to the passiveDns collection.|
|[Remove passiveDns](../api/security-ipaddress-delete-passivedns.md)|None|Remove a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[List passiveDnsReverse](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get the passiveDns resources from the passiveDnsReverse navigation property.|
|[Add passiveDns](../api/security-ipaddress-post-passivednsreverse.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Add passiveDnsReverse by posting to the passiveDnsReverse collection.|
|[Remove passiveDnsReverse](../api/security-ipaddress-delete-passivednsreverse.md)|None|Remove a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[List hostReputation](../api/security-host-list-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) collection|Get the hostReputation resources from the reputation navigation property.|
|[Create hostReputation](../api/security-ipaddress-post-reputation.md)|[microsoft.graph.security.hostReputation](../resources/security-hostreputation.md)|Create a new hostReputation object.|
|[List trackers](../api/security-hostname-list-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Get the hostTracker resources from the trackers navigation property.|
|[Add hostTracker](../api/security-ipaddress-post-trackers.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)|Add trackers by posting to the trackers collection.|
|[Remove trackers](../api/security-ipaddress-delete-trackers.md)|None|Remove a [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autonomousSystem|[microsoft.graph.security.autonomousSystem](../resources/security-autonomoussystem.md)|**TODO: Add Description**|
|countryOrRegion|String|**TODO: Add Description**|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|hostingProvider|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.security.host](../resources/security-host.md).|
|netblock|String|**TODO: Add Description**|

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
  "@odata.type": "microsoft.graph.security.ipAddress",
  "baseType": "microsoft.graph.security.host",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ipAddress",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "countryOrRegion": "String",
  "netblock": "String",
  "autonomousSystem": {
    "@odata.type": "microsoft.graph.security.autonomousSystem"
  },
  "hostingProvider": "String"
}
```

