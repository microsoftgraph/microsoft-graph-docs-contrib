---
title: "admin resource type"
description: "Entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# admin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that acts as a container for administrator functionality.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| edge | [edge](edge.md) | A container for Microsoft Edge resources. Read-only. |
| reportSettings |[microsoft.graph.adminReportSettings](../resources/adminreportsettings.md)|A container for administrative resources to manage reports.|
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
| sharepoint |[microsoft.graph.tenantAdmin.sharepoint](../resources/tenantadmin-sharepoint.md)|A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive.|
| windows |[microsoft.graph.windowsUpdates.windows](../resources/windowsupdates-windows.md)|A container for all Windows Update for Business deployment service functionality. Read-only.|

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

