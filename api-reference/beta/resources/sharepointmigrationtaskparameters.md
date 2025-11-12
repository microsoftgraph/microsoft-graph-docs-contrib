---
author: xiaoqwan
title: SharePointMigrationTaskParameters resource type
ms.localizationpriority: medium
description: "Represents the parameters necessary to migrate a specific source resource in a source organization to a target organization."
ms.subservice: "sharepoint"
doc_type: resourcePageType
toc.title: "SharePoint Migration Task Parameters"
ms.date: 11/02/2025
---

# SharePointMigrationTaskParameters resource type

This complex type encapsulates the parameters necessary to migrate a specific source resource in a source organization to a target organization, and other parameters that control the migration process. Must be specified when creating a new sharePointMigrationTask using POST.

## Properties

| Property               | Type              | Description
|:---------------------- |:----------------- |:-----------------------------------------------
| targetOrganizationId     | guid              | The unique Microsoft Entra companyId of the target organization to which the source resource needs to be migrated. Only on OneDrive and SharePoint.
| targetOrganizationHost   | string            | The root, admin, or my site host of the specific multigeo instance of the target organization where the resource needs to be migrated (to ensure data residency and compliance). Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.
| targetDataLocationCode   | string            | The string in Microsoft Entra represents the geographic location (for example, `JPN`, `NAM`) of the target organization where the resource must be migrated to ensure data residency and compliance.  Not required for single-geo target organizations or if the migration is to the default GEO of a multi-geo target organization. Optional. Only on OneDrive and SharePoint.
| preferredStartDateTime | dateTimeOffset    | Allows the sharePointMigrationTask to start some time in future as opposed to as-soon-as-possible (default). Optional. Only on OneDrive and SharePoint.
| preferredLatestStartDateTime | dateTimeOffset    | The system cancels the sharePointMigrationTask if it does not start by this time. Must be greater than the preferredStartDateTime if present. Optional. Only on OneDrive and SharePoint.
| validateOnly           | boolean           | Indicates if this task is an actual migration task or is it doing validation only. When the parameter is missing, the system treats it as false. The default behavior is a real migration. Optional. Only on OneDrive and SharePoint.
| sourceSiteUrl            | string            | The SharePoint URL of the source site. Optional. Exactly one of sourceSiteId or sourceUrl must be specified. If both or neither are specified, it's an error. Only on OneDrive and SharePoint.
| targetSiteUrl            | string            | The SharePoint URL of the target site. Only on OneDrive and SharePoint.

## JSON Representation

Here's a JSON representation of a **microsoft.graph.sharePointMigrationTaskParameters** resource.

```json
{
  "targetOrganizationId": { "@odata.type": "guid" },
  "targetOrganizationHost": "string",
  "targetDataLocationCode": "string",
  "preferredStartDateTime": "string (timestamp)",
  "preferredLatestStartDateTime": "string (timestamp)",
  "validateOnly": "boolean",
  "sourceSiteUrl": "string",
  "targetSiteUrl": "string"
}
