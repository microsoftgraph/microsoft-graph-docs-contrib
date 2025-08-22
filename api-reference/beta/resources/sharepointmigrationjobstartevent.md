---
title: "sharePointMigrationJobStartEvent resource type"
description: "Migration start status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobStartEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobStartEvent** resource represents the start status of a migration job.


Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobStart** or **JobRestart**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **JobStart** or **JobRestart** event. Read-only. Only on OneDrive and SharePoint. Inherited from [entity](../resources/entity.md).|
|isRestarted|Boolean|True if the job is restarted and False if it is the initial start. Read-only. Only on OneDrive and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobStartEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobStartEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "isRestarted": "Boolean",
  "totalRetryCount": "Integer"
}
```
