---
title: "headers resource type"
description: "Represents the HTTP headers included in a network request or response"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# headers resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the HTTP headers included in a network request or response

## Properties
|Property|Type|Description|
|:---|:---|:---|
|origin|String|Represents the origin or source from which the request is being made|
|referrer|String|Represents the referring URL or the URL of the web page that the current request originates from|
||String|Represents the information about the client's original IP address when the request passes through one or more proxy servers or load balancers|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.headers"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.headers",
  "referrer": "String",
  "origin": "String",
  "xForwardedFor": "String"
}
```

