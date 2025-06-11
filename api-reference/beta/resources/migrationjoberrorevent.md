---
title: "migrationJobErrorEvent resource type"
description: "Migration error status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# migrationJobErrorEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **migrationJobErrorEvent** resource represents the error status of a migration job.

Inherits from [migrationEvent](../resources/migrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationjob-list-progressevents.md)|[migrationEvent](../resources/migrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|error|[publicError](../resources/publicerror.md)|The error code and message. Read-only. Only on OneDrive for Business and SharePoint.|
|errorLevel|migrationJobErrorLevel|The error level. Read-only. Only on OneDrive for Business and SharePoint. The possible values are: `important`, `warning`, `error`, `fatalError`, `unknownFutureValue`.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to a certain type of **JobError**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|id|String|The id of a **JobError** event. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [migrationEvent](../resources/migrationevent.md).|
|objectId|String|The object id. Read-only. Only on OneDrive for Business and SharePoint.|
|objectType|migrationObjectType|The object type. Read-only. Only on OneDrive for Business and SharePoint. The possible values are: `site`, `web`, `folder`, `list`, `listItem`, `file`, `alert`, `sharedWithObject`, `invalid`, `unknownFutureValue`.|
|objectUrl|String|The object url. Read-only. Only on OneDrive for Business and SharePoint.|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationJobErrorEvent",
  "baseType": "microsoft.graph.migrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationJobErrorEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "errorLevel": {
    "@odata.type": "microsoft.graph.migrationJobErrorLevel"
  },
  "totalRetryCount": "Integer",
  "objectType": {
    "@odata.type": "microsoft.graph.migrationObjectType"
  },
  "objectUrl": "String",
  "objectId": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
