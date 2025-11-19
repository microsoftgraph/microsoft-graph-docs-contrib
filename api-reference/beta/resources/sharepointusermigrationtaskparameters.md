---
title: "sharePointUserMigrationTaskParameters resource type"
description: "Represents the parameters necessary to migrate a specific user in a source organization to a target organization."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# sharePointUserMigrationTaskParameters resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This complex type encapsulates the parameters necessary to migrate a specific user in a source tenant to a target tenant. Must be specified when creating a new migration task using POST.

Inherits from [sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md).

## Properties

| Property               | Type              | Description
|:---------------------- |:----------------- |:-----------------------------------------------
| targetOrganizationId     | guid              | The unique Microsoft Entra companyId of the target organization to which the source resource needs to be migrated. Only on OneDrive and SharePoint.
| targetOrganizationHost   | string            | The root, admin, or my site host of the specific multigeo instance of the target organization where the resource needs to be migrated (to ensure data residency and compliance). Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.
| targetDataLocationCode   | string            | The string in Microsoft Entra representing the geographic location (for example, `JPN`, `NAM`)  the target organization where the resource must be migrated to ensure data residency and compliance. Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.
| preferredStartDateTime | dateTimeOffset    | Allows the crossOrganizationMigrationTask to start some time in future as opposed to as-soon-as-possible (default). Optional. Only on OneDrive and SharePoint.
| preferredLatestStartDateTime | dateTimeOffset    | If the crossOrganizationMigrationTask doesn't start by this time, it's automatically canceled. Must be greater than the preferredStartDateTime if present. Optional. Only on OneDrive and SharePoint.
| validateOnly           | boolean           | Indicates if this task is an actual migration task or is it doing validation only. If not present, it's assumed to be false (that is, the default is a real migration). Optional. Only on OneDrive and SharePoint.
| sourceSiteUrl            | string            | The SharePoint URL of the source site. Optional. Exactly one of sourceSiteId or sourceUrl must be specified. If both or neither are specified, it's an error. Only on OneDrive and SharePoint.
| targetSiteUrl            | string            | The SharePoint URL of the target site. Only on OneDrive and SharePoint.
| sourceUserIdentity       | [userIdentity]    | The source user in the source tenant, it includes user object ID and user principal name.
| targetUserIdentity       | [userIdentity]    | The target user in the target tenant, it includes user object ID and user principal name.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointUserMigrationTaskParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointUserMigrationTaskParameters",
  "targetOrganizationId": "Guid",
  "targetDataLocationCode": "String",
  "targetOrganizationHost": "String",
  "validateOnly": "Boolean",
  "preferredStartDateTime": "String (timestamp)",
  "preferredLatestStartDateTime": "String (timestamp)",
  "sourceSiteUrl": "String",
  "targetSiteUrl": "String",
  "sourceUserIdentity": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "targetUserIdentity": {
    "@odata.type": "microsoft.graph.userIdentity"
  }
}
```
