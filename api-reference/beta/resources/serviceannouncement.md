---
title: "serviceAnnouncement resource container"
description: "serviceAnnouncement is a top level container for ServiceCommsPlatform resources"
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceAnnouncement resource container

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

serviceAnnouncement is a top level container for ServiceCommsPlatform resources.

## Methods
None.

## Properties
None.

## Relationships
|Property|Type|Description|Contained Navigation Property|Nullable|ReadOnly|
|-|-|-|-|-|-|
|`messages`|`Collection<graph.serviceUpdateMessage>`|Show a collection of messages of a service|Yes|Yes|Yes|
|`healthOverviews`|`Collection<graph.serviceHealth>`|Show the health overview for a service. The overview will tell what is the service, and its overrall health status, and a collection of issues with details happened in the service if there is any.|Yes|Yes|Yes|
|`issues`|`Collection<graph.serviceHealthIssue>`|Show issues happened on a service with detailed information on each issue.|Yes|Yes|Yes|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceAnnouncement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceAnnouncement"
}
```

