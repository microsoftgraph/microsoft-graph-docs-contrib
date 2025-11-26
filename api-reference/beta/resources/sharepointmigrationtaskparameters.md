---
title: "sharePointMigrationTaskParameters resource type"
description: "Represents the parameters necessary to migrate a specific source resource in a source organization to a target organization."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
toc.title: SharePoint migration task parameters
doc_type: resourcePageType
---

# sharePointMigrationTaskParameters resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters necessary to migrate a specific source resource in a source organization to a target organization, and other parameters that control the migration process. Must be specified when creating a new sharePointMigrationTask using POST.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|preferredLatestStartDateTime|DateTimeOffset|The system cancels the sharePointMigrationTask if it does not start by this time. Must be greater than the preferredStartDateTime if present. Optional. Only on OneDrive and SharePoint.|
|preferredStartDateTime|DateTimeOffset|Allows the sharePointMigrationTask to start some time in future as opposed to as-soon-as-possible (default). Optional. Only on OneDrive and SharePoint.|
|sourceSiteUrl|String|The SharePoint URL of the source site. Optional. Exactly one of sourceSiteId or sourceUrl must be specified. If both or neither are specified, it's an error. Only on OneDrive and SharePoint.|
|targetDataLocationCode|String|The string in Microsoft Entra represents the geographic location (for example, `JPN`, `NAM`) of the target organization where the resource must be migrated to ensure data residency and compliance.  Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.|
|targetOrganizationHost|String|The root, admin, or my site host of the specific multigeo instance of the target organization where the resource needs to be migrated (to ensure data residency and compliance). Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.|
|targetOrganizationId|Guid|The unique Microsoft Entra companyId of the target organization to which the source resource needs to be migrated. Only on OneDrive and SharePoint.|
|targetSiteUrl|String|The SharePoint URL of the target site. Only on OneDrive and SharePoint.|
|validateOnly|Boolean|Indicates if this task is an actual migration task or is it doing validation only. When the parameter is missing, the system treats it as false. The default behavior is a real migration. Optional. Only on OneDrive and SharePoint.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointMigrationTaskParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationTaskParameters",
  "targetOrganizationId": "Guid",
  "targetDataLocationCode": "String",
  "targetOrganizationHost": "String",
  "validateOnly": "Boolean",
  "preferredStartDateTime": "String (timestamp)",
  "preferredLatestStartDateTime": "String (timestamp)",
  "sourceSiteUrl": "String",
  "targetSiteUrl": "String"
}
```
