---
title: "hostComponent resource type"
description: "**TODO: Add Description**"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# hostComponent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List hostComponents](../api/security-hostname-list-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Get a list of the [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) objects and their properties.|
|[Create hostComponent](../api/security-hostname-post-components.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Create a new [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[Get hostComponent](../api/security-hostcomponent-get.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Read the properties and relationships of a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[Update hostComponent](../api/security-hostcomponent-update.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)|Update the properties of a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[Delete hostComponent](../api/security-hostname-delete-components.md)|None|Delete a [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) object.|
|[List host](../api/security-threatintelligence-list-hosts.md)|[microsoft.graph.security.host](../resources/security-host.md) collection|Get the host resources from the host navigation property.|
|[Add host](../api/security-hostcomponent-post-host.md)|[microsoft.graph.security.host](../resources/security-host.md)|Add host by posting to the host collection.|
|[Remove host](../api/security-hostcomponent-delete-host.md)|None|Remove a [microsoft.graph.security.host](../resources/security-host.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|String|**TODO: Add Description**|
|firstSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|lastSeenDateTime|DateTimeOffset|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|host|[host](../resources/security-host.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostComponent",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.hostComponent",
  "id": "String (identifier)",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "name": "String",
  "version": "String",
  "category": "String"
}
```

