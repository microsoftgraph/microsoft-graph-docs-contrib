---
title: "serviceAnnouncement resource type"
description: "A top-level container for service communications resources"
author: "payiAzure"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# serviceAnnouncement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A top-level container for service communications resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List health overviews](../api/serviceannouncement-list-healthoverviews.md)|[serviceHealth](../resources/servicehealth.md) collection|Get the serviceHealth resources from the healthOverviews navigation property.|
|[List issues](../api/serviceannouncement-list-issues.md)|[serviceHealthIssue](../resources/servicehealthissue.md) collection|Get the serviceHealthIssue resources from the issues navigation property.|
|[List messages](../api/serviceannouncement-list-messages.md)|[serviceUpdateMessage](../resources/serviceupdatemessage.md) collection|Get the serviceUpdateMessage resources from the messages navigation property.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|-|-|-|
|messages|Collection([serviceUpdateMessage](serviceupdatemessage.md))|A collection of service messages for tenant. This property is a contained navigation property, it is nullable and readonly.|
|healthOverviews|Collection([serviceHealth](servicehealth.md))|A collection of service health information for tenant. This property is a contained navigation property, it is nullable and readonly.|
|issues|Collection([serviceHealthIssue](servicehealthissue.md))|A collection of service issues for tenant. This property is a contained navigation property, it is nullable and readonly.|

## JSON representation
The following JSON representation shows the resource type.
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
