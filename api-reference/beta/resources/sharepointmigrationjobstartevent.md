---
title: "sharepointMigrationJobStartEvent resource type"
description: "**TODO: Add Description**"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharepointMigrationJobStartEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharepointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **JobStart** or **JobRestart**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The id of a **JobStart** or **JobRestart** event. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [entity](../resources/entity.md).|
|isRestarted|Boolean|True if job is restarted. False if this is the first start. Read-only. Only on OneDrive for Business and SharePoint.|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|totalRetryCount|Int32|Current job retry count. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharepointMigrationJobStartEvent",
  "baseType": "microsoft.graph.sharepointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharepointMigrationJobStartEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "isRestarted": "Boolean",
  "totalRetryCount": "Integer"
}
```
