---
title: "serviceAnnouncement resource type"
description: "A top level container for service communications resources"
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceAnnouncement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A serviceAnnouncement is a top level container for service communications resources.

## Methods
This resource type doesn't have methods.

## Properties
This resource type doesn't have properties.

## Relationships
|Property|Type|Description|Contained Navigation Property|Nullable|ReadOnly|
|-|-|-|-|-|-|
|messages|[serviceUpdateMessage](serviceupdatemessage.md) Collection|Show a collection of messages of a service|Yes|Yes|Yes|
|healthOverviews|[serviceHealth](servicehealth.md) Collection|Show the health overview for a service. The overview will tell what is the service, and its overrall health status, and a collection of issues with details happened in the service if there is any.|Yes|Yes|Yes|
|issues|[serviceHealthIssue](servicehealthissue.md) Collection|Show issues happened on a service with detailed information on each issue.|Yes|Yes|Yes|

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

