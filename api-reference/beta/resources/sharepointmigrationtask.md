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
| Get | SharePointMigrationTask[] | Attempt to get the specified sharePointMigrationTask by ID and return its status after this attempt. |
| Create | SharePointMigrationTask | Attempt to create the specified sharePointMigrationTask. |
| Cancel | SharePointMigrationTask | Attempt to cancel the specified sharePointMigrationTask by ID and return its status after this attempt. |
| GetBySourceSiteUrl | SharePointMigrationTask[] | Returns the status of the sharePointMigrationTask for a site given the source site URL. |
| GetBySourceUserPrincipalName | SharePointMigrationTask[] | Returns the status of the sharePointMigrationTask for a user given the source user principal name. |
| GetBySourceGroupMailNickname | SharePointMigrationTask[] | Returns the status of the sharePointMigrationTask for a group given the source group mail nickname. |

## Properties

| Property | Type | Description |
|:-------------------|:------------------------|:-----------------------------------------------|
| ID | string | Unique ID of the crossOrganizationMigration operation for the source organization and resource defined in the parameters. Key. Omit this property during creation. The service returns it automatically. Only on OneDrive and SharePoint. |
| parameters | sharePointMigrationTaskParameters | Identifies the source resource and org. Defines the target org and includes settings that control the migration process. They need to be specified during task creation but are also replayed back in every query about this task, for tracking and identification. Only on OneDrive and SharePoint. |
| status | sharePointMigrationTaskStatus | Enumeration value that indicates the status of the migration activity that this task represents. Omit this property during creation. The service returns it automatically. Only on OneDrive and SharePoint. |
| startedDateTime | DateTimeOffset | DateTime when the sharePointMigrationTask started, if available. Read-only. Optional. Only on OneDrive and SharePoint. |
| lastUpdatedDateTime | DateTimeOffset | DateTime when the sharePointMigrationTask was last updated, executed, or touched in any way, if available. Use this property to find tasks that stopped processing for a long time. Read-only. Optional. Only on OneDrive and SharePoint. |
| finishedDateTime | DateTimeOffset | DateTime when the sharePointMigrationTask ended, if available. (The task might complete successfully or fail, but it ends execution at this time.) Read-only. Optional. Only on OneDrive and SharePoint. |
| errors | publicError | The error information to provide context for failures. Optional. Read-only. Only on OneDrive and SharePoint. |

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
