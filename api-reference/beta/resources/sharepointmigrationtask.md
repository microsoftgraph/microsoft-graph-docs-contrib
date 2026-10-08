---
title: "sharePointMigrationTask resource type"
description: "Represents the migration task for migrating a specific source resource to a target organization and indicates the status of that migration operation."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
toc.title: SharePoint migration task
doc_type: resourcePageType
---

# sharePointMigrationTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the migration task for migrating a specific source resource to a target organization and indicates the status of that migration operation. This entity captures a specific intent to perform a **sharePointMigrationTask** operation, has a unique ID, can exist independently, has a defined lifetime, and can be retrieved using the ID.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/sharepointmigrationtask-get.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created, using the task ID.|
|[Create or update](../api/sharepointmigrationtask-update.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Create or update a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) to migrate a resource from the source organization to the target organization, using the **sharePointMigrationTaskParameters**.|
|[Get by source user principal name](../api/sharepointmigrationtask-getbysourceuserprincipalname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a user, using the source **userPrincipalName**.|
|[Get by source site URL](../api/sharepointmigrationtask-getbysourcesiteurl.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a regular site, using the source site URL.|
|[Get by source group mail nickname](../api/sharepointmigrationtask-getbysourcegroupmailnickname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a group, using the source group mail nickname.|
|[Cancel](../api/sharepointmigrationtask-cancel.md)|None|Cancel a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that moves a specific object from a source organization to a target organization.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|The error information to provide context for failures. Optional. Read-only. Only on OneDrive and SharePoint.|
|finishedDateTime|DateTimeOffset|Date and time when the **sharePointMigrationTask** ended, if available. The task might complete successfully or fail, but it ends at that time. Read-only. Only on OneDrive and SharePoint. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique ID of the **sharePointMigrationTask** operation for the source organization and resource defined in the parameters. Omit this property during creation. The service returns it automatically. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|Date and time when the **sharePointMigrationTask** was last updated or processed, if available. Use this property to find tasks that stopped processing for a long time. Read-only. Optional. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|parameters|[sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md)|Identifies the source resource and organization, defines the target organization, and includes settings that control the migration process. These settings must be specified during task creation and are also returned in every query about this task for tracking and identification.|
|startedDateTime|DateTimeOffset|Date and time when the **sharePointMigrationTask** started, if available. Read-only. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|status|sharePointMigrationTaskStatus|Indicates the status of the migration activity that this task represents. Omit this property during creation. The service returns it automatically. The possible values are: `notStarted`, `inProgress`, `completed`, `cancelled`, `failed`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationTask",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "finishedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "parameters": {"@odata.type": "microsoft.graph.sharePointMigrationTaskParameters"},
  "startedDateTime": "String (timestamp)",
  "status": "String"
}
```
