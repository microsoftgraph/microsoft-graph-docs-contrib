---
title: "admin resource type"
description: "Entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.prod: "service-communications"
doc_type: resourcePageType
---

# admin resource type

Namespace: microsoft.graph

Entity that acts as a container for administrator functionality.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
| sharepoint |[microsoft.graph](sharepoint.md)| A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.admin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.admin"
}
```
