---
title: "sharePointSiteMigrationTaskParameters resource type"
description: "Represents the parameters necessary to migrate a specific regular site in a source organization to a target organization."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
toc.title: SharePoint site migration task parameters
doc_type: resourcePageType
---

# sharePointSiteMigrationTaskParameters resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the parameters necessary to migrate a specific regular site in a source organization to a target organization. Must be specified when creating a new migration task using POST.

Inherits from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|preferredLatestStartDateTime|DateTimeOffset|If the sharePointMigrationTask doesn't start by this time, it's automatically canceled. Must be greater than the preferredStartDateTime if present. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|preferredStartDateTime|DateTimeOffset|Allows the sharePointMigrationTask to start some time in future as opposed to as-soon-as-possible (default). Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|sourceSiteUrl|String|The SharePoint URL of the source site. Optional. Exactly one of sourceSiteId or sourceUrl must be specified. If both or neither are specified, it's an error. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetDataLocationCode|String|The string in Microsoft Entra representing the geographic location (for example, `JPN`, `NAM`)  the target organization where the resource must be migrated to ensure data residency and compliance. Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetOrganizationHost|String|The root, admin, or my site host of the specific multigeo instance of the target organization where the resource needs to be migrated (to ensure data residency and compliance). Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetOrganizationId|Guid|The unique Microsoft Entra companyId of the target organization to which the source resource needs to be migrated. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|targetSiteUrl|String|The SharePoint URL of the target site. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|
|validateOnly|Boolean|Indicates if this task is an actual migration task or is it doing validation only. If not present, it's assumed to be false (that is, the default is a real migration). Optional. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointSiteMigrationTaskParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
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
