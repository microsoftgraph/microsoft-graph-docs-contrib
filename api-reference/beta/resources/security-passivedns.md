---
title: "passiveDns resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# passiveDns resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List passiveDns](../api/security-hostname-list-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md) collection|Get a list of the [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) objects and their properties.|
|[Create passiveDns](../api/security-hostname-post-passivedns.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Create a new [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[Get passiveDns](../api/security-passivedns-get.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Read the properties and relationships of a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[Update passiveDns](../api/security-passivedns-update.md)|[microsoft.graph.security.passiveDns](../resources/security-passivedns.md)|Update the properties of a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[Delete passiveDns](../api/security-hostname-delete-passivedns.md)|None|Delete a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object.|
|[List artifact](../api/security-passivedns-list-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md) collection|Get the artifact resources from the artifact navigation property.|
|[Add artifact](../api/security-passivedns-post-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Add artifact by posting to the artifact collection.|
|[Remove artifact](../api/security-passivedns-delete-artifact.md)|None|Remove a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|
|[List host](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the parentHost navigation property.|
|[Add host](../api/security-passivedns-post-parenthost.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add parentHost by posting to the parentHost collection.|
|[Remove host](../api/security-passivedns-delete-parenthost.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|collectedDateTime|DateTimeOffset|**TODO: Add Description**|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|recordType|String|**TODO: Add Description**|
|sources|microsoft.graph.security.passiveDnsSource collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|artifact|[artifact](../resources/security-artifact.md)|**TODO: Add Description**|
|parentHost|[host](../resources/security-host.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.passiveDns",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.passiveDns",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "collectedDateTime": "String (timestamp)",
  "recordType": "String",
  "sources": [
    "String"
  ]
}
```

