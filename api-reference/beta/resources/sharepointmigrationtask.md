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

This encapsulates the intent and parameters necessary to migrate a specific source resource in a source organization to a target organization, and the status of that migration operation.
This is an entity - it captures a specific intent to do a crossOrganizationMigration operation, has a unique ID, can exist independently, has a lifetime, and be retrieved using the ID.

## Methods

| Method        | Return type                | Description
|:------------- |:-------------------------- |:-----------------------------------------------
| [Get](../api/sharepointmigrationtask-get.md)        | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Attempt to get the specified sharePointMigrationTask by Id and return it's status after this attempt.
| [Create](../api/sharepointmigrationtask-create.md)        | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Attempt to create the specified sharePointMigrationTask
| [Cancel](../api/sharepointmigrationtask-cancel.md)        | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Attempt to cancel the specified sharePointMigrationTask by Id and return it's status after this attempt.
| [GetBySourceSiteUrl](../api/sharepointmigrationtask-GetBySourceSiteUrl.md)   | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Returns the status of the sharePointMigrationTask for a site given the source site URL.
| [GetBySourceUserPrincipalName](../api/sharepointmigrationtask-GetBySourceUserPrincipalName.md)  | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Returns the status of the sharePointMigrationTask for a user given the source user principal name.
| [GetBySourceGroupMailNickname](../api/sharepointmigrationtask-GetBySourceGroupMailNickname.md)   | [sharePointMigrationTask](./sharepointmigrationtask.md)[] | Returns the status of the sharePointMigrationTask for a group given the source group mail nickname.

## Properties

| Property            | Type                     | Description
|:------------------- |:------------------------ |:-----------------------------------------------
| id                  | string                   | Unique ID of the crossOrganizationMigration operation for the specific source organization and resource identified by the parameters below. Key. Should not be specified during create - it is returned by the service. Only on OneDrive for Business and SharePoint.
| parameters          | [sharePointMigrationTaskParameters](./sharepointmigrationtaskparameters.md) | Complex type that clearly indicates the source resource and organization, the target organization to which the resource needs to be migrated and other parameters that control the migration process. They need to be specified during task creation but are also replayed back in every query about this task, for tracking and identification. Only on OneDrive for Business and SharePoint.
| status              | [sharePointMigrationTaskStatus](./enums.md#sharepointmigrationtaskstatus-values) | Enumeration value that indicates the status of the migration activity that this task represents. Should not be specified during create - it is returned by the service. Only on OneDrive for Business and SharePoint.
| startedDateTime     | DateTimeOffset           | DateTime when the sharePointMigrationTask started, if available. Read-only. Optional. Only on OneDrive for Business and SharePoint.
| lastUpdatedDateTime | DateTimeOffset           | DateTime when the sharePointMigrationTask was last updated, executed or touched in any way, if available. This can help spot stuck tasks that have not been processed for a while. Read-only. Optional. Only on OneDrive for Business and SharePoint.
| finishedDateTime    | DateTimeOffset           | DateTime when the sharePointMigrationTask ended, if available. (The task may have completed successfully or failed, but it finished execution at this time.) Read-only. Optional. Only on OneDrive for Business and SharePoint.
| errors              | [publicError](../resources/publicerror.md)[] | The error information to provide context for failures. Optional. Read-only. Only on OneDrive for Business and SharePoint.

## JSON Representation

Here is a JSON representation of a **microsoft.graph.sharePointMigrationTask** resource.

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
