---
title: "sharePointMigrationJobErrorEvent resource type"
description: "Migration error status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobErrorEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationJobErrorEvent** resource represents the error status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|error|[publicError](../resources/publicerror.md)|The error code and message. Read-only. Only on OneDrive and SharePoint.|
|errorLevel|sharePointMigrationJobErrorLevel|The error level. Read-only. Only on OneDrive and SharePoint. The possible values are: `important`, `warning`, `error`, `fatalError`, `unknownFutureValue`.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to a certain type of **JobError**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **JobError** event. Read-only. Only on OneDrive and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|objectId|String|The object id. Read-only. Only on OneDrive and SharePoint.|
|objectType|sharePointMigrationObjectType|The object type. Read-only. Only on OneDrive and SharePoint. The possible values are: `site`, `web`, `folder`, `list`, `listItem`, `file`, `alert`, `sharedWithObject`, `invalid`, `unknownFutureValue`.|
|objectUrl|String|The object url. Read-only. Only on OneDrive and SharePoint.|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationJobErrorEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationJobErrorEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "errorLevel": {
    "@odata.type": "microsoft.graph.sharePointMigrationJobErrorLevel"
  },
  "totalRetryCount": "Integer",
  "objectType": {
    "@odata.type": "microsoft.graph.sharePointMigrationObjectType"
  },
  "objectUrl": "String",
  "objectId": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
