---
title: "hostCookie resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# hostCookie resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostCookies](../api/security-hostname-list-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Get a list of the [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) objects and their properties.|
|[Create hostCookie](../api/security-hostname-post-cookies.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Create a new [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[Get hostCookie](../api/security-hostcookie-get.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Read the properties and relationships of a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[Update hostCookie](../api/security-hostcookie-update.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)|Update the properties of a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[Delete hostCookie](../api/security-hostname-delete-cookies.md)|None|Delete a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object.|
|[List host](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the host navigation property.|
|[Add host](../api/security-hostcookie-post-host.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add host by posting to the host collection.|
|[Remove host](../api/security-hostcookie-delete-host.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domain|String|**TODO: Add Description**|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostCookie",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostCookie",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String",
  "domain": "String"
}
```

