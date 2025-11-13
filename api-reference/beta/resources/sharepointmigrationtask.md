---
author: xiaoqwan
title: SharepointMigrationTask resource type
ms.localizationpriority: medium
description: "Represents the migration task used for migrating a specific source resource to a target organization."
ms.subservice: "sharepoint"
doc_type: resourcePageType
toc.title: "SharePoint Migration Task"
ms.date: 11/02/2025
---

# SharePointMigrationTask resource type

This entity encapsulates the intent and parameters necessary to migrate a specific source resource in a source organization to a target organization, and the status of that migration operation.
This entity captures a specific intent to do a crossOrganizationMigration operation, has a unique ID, can exist independently, have a lifetime, and be retrieved using the ID.

## Methods

| Method | Return type | Description |
|:-------------|:--------------------------|:-----------------------------------------------|
| [Get](../api/sharepointmigrationtask-get.md) | SharePointMigrationTask[] | Attempt to get the specified sharePointMigrationTask by ID and return its status after this attempt. |

## Properties

| Property | Type | Description |
|:-------------------|:------------------------|:-----------------------------------------------|
| ID | string | Unique ID of the crossOrganizationMigration operation for the source organization and resource defined in the parameters. Key. Omit this property during creation. The service returns it automatically. Only on OneDrive and SharePoint. |

## JSON Representation

Here's a JSON representation of a **microsoft.graph.sharePointMigrationTask** resource.

```json
{
  "id": "string",
  "parameters": { "@odata.type": "microsoft.graph.sharePointMigrationTaskParameters" },
  "status": { "@odata.type": "microsoft.graph.sharePointMigrationTaskStatus" },
  "startedDateTime": "string (timestamp)",
  "lastUpdatedDateTime": "string (timestamp)",
  "finishedDateTime": "string (timestamp)",
  "errors": [{ "@odata.type": "microsoft.graph.error" }] 
}
```
