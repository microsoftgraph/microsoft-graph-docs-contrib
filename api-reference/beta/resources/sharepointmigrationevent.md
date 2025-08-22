---
title: "sharepointMigrationEvent resource type"
description: "Basic information of a migration event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationEvent** resource represents the common information of a SharePoint migration event. All the progress events are inherited from this base event.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the sharePointMigrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint.|
|eventDateTime|DateTimeOffset|The UTC time when job status changes. Read-only. Only on OneDrive and SharePoint.|
|id|String| The ID of a migration progress event. Read-only. Only on OneDrive and SharePoint. Inherits from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String"
}
```
