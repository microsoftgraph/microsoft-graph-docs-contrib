---
title: "sharePointMigrationTask resource type"
description: "Represents the migration task used for migrating a specific source resource to a target organization."
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

Represents the migration task used for migrating a specific source resource to a target organization, and the status of that migration operation.
This entity captures a specific intent to do a sharePointMigrationTask operation, has a unique ID, can exist independently, have a lifetime, and be retrieved using the ID.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/sharepointmigrationtask-get.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Read the properties and relationships of [sharePointMigrationTask](../resources/sharepointmigrationtask.md) object.|
|[Update](../api/sharepointmigrationtask-update.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Create or Update the properties of a sharePointMigrationTask object.|
|[Get by source user principal name](../api/sharepointmigrationtask-getbysourceuserprincipalname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Returns the status of the sharePointMigrationTask for a user given the source user principal name.|
|[Get by source site url](../api/sharepointmigrationtask-getbysourcesiteurl.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Returns the status of the sharePointMigrationTask for a site given the source site URL.|
|[Get by source group mail nickname](../api/sharepointmigrationtask-getbysourcegroupmailnickname.md)|[sharePointMigrationTask](../resources/sharepointmigrationtask.md)|Returns the status of the sharePointMigrationTask for a group given the source group mail nickname.|
|[Cancel](../api/sharepointmigrationtask-cancel.md)|None|Cancel the specified sharePointMigrationTask by ID and return its status after this attempt.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|The error information to provide context for failures. Optional. Read-only. Only on OneDrive and SharePoint|
|finishedDateTime|DateTimeOffset|DateTime when the sharePointMigrationTask ended, if available. (The task might complete successfully or fail, but it ends execution at this time.) Read-only. Optional. Only on OneDrive and SharePoint.|
|id|String|Unique ID of the sharePointMigrationTask operation for the source organization and resource defined in the parameters. Omit this property during creation. The service returns it automatically. Inherits from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|DateTime when the sharePointMigrationTask was last updated, executed, or touched in any way, if available. Use this property to find tasks that stopped processing for a long time. Read-only. Optional.|
|parameters|[sharePointMigrationTaskParameters](../resources/sharepointmigrationtaskparameters.md)|Identifies the source resource and org. Defines the target org and includes settings that control the migration process. They need to be specified during task creation but are also replayed back in every query about this task, for tracking and identification.|
|startedDateTime|DateTimeOffset|DateTime when the sharePointMigrationTask started, if available. Read-only. Optional.|
|status|sharePointMigrationTaskStatus|Enumeration value that indicates the status of the migration activity that this task represents. Omit this property during creation. The service returns it automatically. The possible values are: `notStarted`, `inProgress`, `completed`, `cancelled`, `failed`, `unknownFutureValue`.|

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
  "id": "String (identifier)",
  "parameters": {
    "@odata.type": "microsoft.graph.sharePointMigrationTaskParameters"
  },
  "status": "String",
  "startedDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "finishedDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
