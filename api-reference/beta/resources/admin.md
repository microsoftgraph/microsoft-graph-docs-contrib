---
title: "admin resource type"
description: "Represents an entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# admin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that acts as a container for administrator functionality.

## Properties
| Property | Type   | Description                                                                         |
|:---------|:-------|:------------------------------------------------------------------------------------|
| id       | String | The unique identifier for the device. Not nullable. Read-only. Returned by default. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| edge | [edge](edge.md) | A container for Microsoft Edge resources. Read-only. |
| reportSettings |[microsoft.graph.adminReportSettings](../resources/adminreportsettings.md)|A container for administrative resources to manage reports.|
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
| sharepointSettings | [sharepointSettings](../resources/sharepointSettings.md) | A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive. |
| windows |[microsoft.graph.adminWindows](../resources/adminwindows.md)|A container for all Windows administrator functionalities. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.admin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.admin",
  "id": "String (identifier)"
}
```
