---
title: "serviceAnnouncement resource type"
description: "A top-level container for service communications resources"
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-health-and-communications"
doc_type: resourcePageType
---

# serviceAnnouncement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A top-level container for service communications resources.

## Methods
None.

## Properties
None.

## Relationships
|Property|Type|Description|
|-|-|-|
|messages|Collection([serviceUpdateMessage](serviceupdatemessage.md))|A collection of service messages for tenant. This property is a contained navigation property, it is nullable and readonly.|
|healthOverviews|Collection([serviceHealth](servicehealth.md))|A collection of service health information for tenant. This property is a contained navigation property, it is nullable and readonly.|
|issues|Collection([serviceHealthIssue](servicehealthissue.md))|A collection of service issues for tenant. This property is a contained navigation property, it is nullable and readonly.|

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