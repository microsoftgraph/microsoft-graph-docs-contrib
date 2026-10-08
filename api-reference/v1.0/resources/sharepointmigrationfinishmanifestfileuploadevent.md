---
title: "sharePointMigrationFinishManifestFileUploadEvent resource type"
description: "Represents the manifest uploaded status of a SharePoint migration job."
author: "wenzhou"
ms.date: 11/17/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration finish manifest file upload event
---

# sharePointMigrationFinishManifestFileUploadEvent resource type

Namespace: microsoft.graph

Represents the manifest uploaded status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to *ManifestFileUploadFinished*. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The unique identifier of this event. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|manifestFileName|String|The exported manifest file name. Read-only.|

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
  "correlationId": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String",
  "manifestFileName": "String"
}
```
