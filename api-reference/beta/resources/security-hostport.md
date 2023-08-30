---
title: "hostPort resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# hostPort resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostPorts](../api/security-hostname-list-ports.md)|[microsoft.graph.security.hostPort](../resources/security-hostport.md) collection|Get a list of the [microsoft.graph.security.hostPort](../resources/security-hostport.md) objects and their properties.|
|[Create hostPort](../api/security-hostname-post-ports.md)|[microsoft.graph.security.hostPort](../resources/security-hostport.md)|Create a new [microsoft.graph.security.hostPort](../resources/security-hostport.md) object.|
|[Get hostPort](../api/security-hostport-get.md)|[microsoft.graph.security.hostPort](../resources/security-hostport.md)|Read the properties and relationships of a [microsoft.graph.security.hostPort](../resources/security-hostport.md) object.|
|[Update hostPort](../api/security-hostport-update.md)|[microsoft.graph.security.hostPort](../resources/security-hostport.md)|Update the properties of a [microsoft.graph.security.hostPort](../resources/security-hostport.md) object.|
|[Delete hostPort](../api/security-hostname-delete-ports.md)|None|Delete a [microsoft.graph.security.hostPort](../resources/security-hostport.md) object.|
|[List host](../api/security-hostport-list-host.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the host navigation property.|
|[Add host](../api/security-hostport-post-host.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add host by posting to the host collection.|
|[Remove host](../api/security-hostport-delete-host.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|
|[List sslCertificate](../api/security-hostport-list-mostrecentsslcertificate.md)|[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) collection|Get the sslCertificate resources from the mostRecentSslCertificate navigation property.|
|[Add sslCertificate](../api/security-hostport-post-mostrecentsslcertificate.md)|[microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md)|Add mostRecentSslCertificate by posting to the mostRecentSslCertificate collection.|
|[Remove sslCertificate](../api/security-hostport-delete-mostrecentsslcertificate.md)|None|Remove a [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|banners|[microsoft.graph.security.hostPortBanner](../resources/security-hostportbanner.md) collection|**TODO: Add Description**|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastScanDateTime|DateTimeOffset|**TODO: Add Description**|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|port|Int32|**TODO: Add Description**|
|protocol|microsoft.graph.security.hostPortProtocol|**TODO: Add Description**.The possible values are: `tcp`, `udp`, `unknownFutureValue`.|
|services|[microsoft.graph.security.hostPortComponent](../resources/security-hostportcomponent.md) collection|**TODO: Add Description**|
|status|microsoft.graph.security.hostPortStatus|**TODO: Add Description**.The possible values are: `open`, `filtered`, `closed`, `unknownFutureValue`.|
|timesObserved|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|**TODO: Add Description**|
|mostRecentSslCertificate|[sslCertificate](../resources/security-sslcertificate.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostPort",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostPort",
  "id": "String (identifier)",
  "port": "Integer",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "lastScanDateTime": "String (timestamp)",
  "timesObserved": "Integer",
  "status": "String",
  "protocol": "String",
  "banners": [
    {
      "@odata.type": "microsoft.graph.security.hostPortBanner"
    }
  ],
  "services": [
    {
      "@odata.type": "microsoft.graph.security.hostPortComponent"
    }
  ]
}
```

