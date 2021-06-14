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

A top level container for service communications resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List healthOverviews](../api/serviceannouncement-list-healthoverviews.md)|[serviceHealth](../resources/servicehealth.md) collection|Get the serviceHealth resources from the **healthOverviews** navigation property.|
|[List issues](../api/serviceannouncement-list-issues.md)|[serviceHealthIssue](../resources/servicehealthissue.md) collection|Get the serviceHealthIssue resources from the **issues** navigation property.|
|[List messages](../api/serviceannouncement-list-messages.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md) collection|Get the serviceUpdateMessage resources from the **messages** navigation property.|

## Properties
This resource type doesn't have properties.

## Relationships
|Property|Type|Description|Contained Navigation Property|Nullable|ReadOnly|
|-|-|-|-|-|-|
|messages|Collection([serviceUpdateMessage](serviceupdatemessage.md))|Show a collection of service messages for tenant.|Yes|Yes|Yes|
|healthOverviews|Collection([serviceHealth](servicehealth.md))|Show a collection of service health information for tenant. |Yes|Yes|Yes|
|issues|Collection([serviceHealthIssue](servicehealthissue.md))|Show a collection of service issues for tenant.|Yes|Yes|Yes|

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