---
title: "admin resource type"
description: "Represents an entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
---

# admin resource type

Namespace: microsoft.graph

Represents an entity that acts as a container for administrator functionality.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| edge | [edge](edge.md) | A container for Microsoft Edge resources. Read-only. |
| microsoft365Apps |[adminMicrosoft365Apps](../resources/adminmicrosoft365apps.md)|A container for the Microsoft 365 apps admin functionality.|
| people | [peopleAdminSettings](../resources/peopleadminsettings.md) | Represents a setting to control people-related admin settings in the tenant. |
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
| sharepointSettings | [sharepointSettings](../resources/sharepointSettings.md) | A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive. |

## JSON representation
The following JSON representation shows the resource type.
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
