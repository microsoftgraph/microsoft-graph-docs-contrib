---
title: "hostPair resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# hostPair resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostPairs](../api/security-hostname-list-hostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection|Get a list of the [microsoft.graph.security.hostPair](../resources/security-hostpair.md) objects and their properties.|
|[Create hostPair](../api/security-hostname-post-hostpairs.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md)|Create a new [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object.|
|[Get hostPair](../api/security-hostpair-get.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md)|Read the properties and relationships of a [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object.|
|[Update hostPair](../api/security-hostpair-update.md)|[microsoft.graph.security.hostPair](../resources/security-hostpair.md)|Update the properties of a [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object.|
|[Delete hostPair](../api/security-hostname-delete-hostpairs.md)|None|Delete a [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object.|
|[List host](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the childHost navigation property.|
|[Add host](../api/security-hostpair-post-childhost.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add childHost by posting to the childHost collection.|
|[Remove host](../api/security-hostpair-delete-childhost.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|
|[List host](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the parentHost navigation property.|
|[Add host](../api/security-hostpair-post-parenthost.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add parentHost by posting to the parentHost collection.|
|[Remove host](../api/security-hostpair-delete-parenthost.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|linkKind|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|childHost|[host](../resources/security-host.md)|**TODO: Add Description**|
|parentHost|[host](../resources/security-host.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostPair",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostPair",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "linkKind": "String"
}
```

