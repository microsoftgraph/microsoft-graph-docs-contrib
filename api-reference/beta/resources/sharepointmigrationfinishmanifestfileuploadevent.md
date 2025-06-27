---
title: "migrationFinishManifestFileUploadEvent resource type"
description: "Manifest uploaded status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharepointMigrationFinishManifestFileUploadEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharepointMigrationFinishManifestFileUploadEvent** resource represents the manifest uploaded status of a SharePoint migration job.

Inherits from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharepointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation id of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **FinishManifestFileUpload**. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The id of a **FinishManifestFileUpload** event. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive for Business and SharePoint. Inherited from [sharepointMigrationEvent](../resources/sharepointmigrationevent.md).|
|manifestFileName|String|The exported manifest file name. Read-only. Only on OneDrive for Business and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharepointMigrationFinishManifestFileUploadEvent",
  "baseType": "microsoft.graph.sharepointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharepointMigrationFinishManifestFileUploadEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "manifestFileName": "String"
}
```
