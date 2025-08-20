---
title: "Admin resource type"
description: "Represents an entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 10/21/2024
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
| entra | [entra](entra.md) | A container for Microsoft Entra resources. Read-only. |
| exchange | [exchangeAdmin](../resources/exchangeadmin.md) |A container for the Exchange admin functionality. Read-only.|
| microsoft365Apps |[adminMicrosoft365Apps](../resources/adminmicrosoft365apps.md)|A container for the Microsoft 365 apps admin functionality.|
| people | [peopleAdminSettings](../resources/peopleadminsettings.md) | Represents a setting to control people-related admin settings in the tenant. |
| reportSettings |[microsoft.graph.adminReportSettings](../resources/adminreportsettings.md)|A container for administrative resources to manage reports.|
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
| sharepointSettings | [sharepointSettings](../resources/sharepointSettings.md) | A container for administrative resources to manage tenant-level settings for SharePoint and OneDrive. |
| teams|[microsoft.graph.teamsAdministration.teamsAdminRoot](../resources/teamsadministration-teamsadminroot.md)|A container for all Teams telephone number management functionalities and user configurations.|
| windows |[microsoft.graph.adminWindows](../resources/adminwindows.md)|A container for all Windows administrator functionalities. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
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
