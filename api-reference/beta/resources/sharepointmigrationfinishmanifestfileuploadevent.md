---
title: "sharepPointMigrationFinishManifestFileUploadEvent resource type"
description: "Manifest uploaded status event"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationFinishManifestFileUploadEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationFinishManifestFileUploadEvent** resource represents the manifest uploaded status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List progressEvents](../api/filestoragecontainer-migrationjob-list-progressevents.md)|[sharePointMigrationEvent](../resources/sharepointmigrationevent.md) collection|Get a list of the migrationEvent objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The UTC time when job status changes to **FinishManifestFileUpload**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **FinishManifestFileUpload** event. Read-only. Only on OneDrive and SharePoint. Inherited from [entity](../resources/entity.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|manifestFileName|String|The exported manifest file name. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointMigrationFinishManifestFileUploadEvent",
  "baseType": "microsoft.graph.sharePointMigrationEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationFinishManifestFileUploadEvent",
  "id": "String (identifier)",
  "jobId": "String",
  "eventDateTime": "String (timestamp)",
  "correlationId": "String",
  "manifestFileName": "String"
}
```
