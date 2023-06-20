---
title: "logs resource type"
description: "Represnts network connections that are routed through Global Secure Access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# logs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represnts network connections that are routed through Global Secure Access.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List logs](../api/networkaccess-networkaccessroot-list-logs.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) collection|Retrieve a list of network access logs [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) objects and their properties.|
|[Get logs](../api/networkaccess-logs-get.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Retrieve a specific network access log  of a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|traffic|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Represents a collection of log entries in the network access traffic log.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.logs",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.logs",
  "id": "String (identifier)"
}
```

