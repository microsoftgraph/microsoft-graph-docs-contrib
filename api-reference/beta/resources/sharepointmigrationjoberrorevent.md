---
title: "sharePointMigrationJobErrorEvent resource type"
description: "Represents the error status of a SharePoint migration job."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationJobErrorEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the error status of a SharePoint migration job.

Inherits from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Methods
For the list of supported methods, see [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|correlationId|String|The correlation ID of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|error|[publicError](../resources/publicerror.md)|The error code and message. Read-only. Only on OneDrive and SharePoint.|
|errorLevel|sharePointMigrationJobErrorLevel|The error level. Read-only. Only on OneDrive and SharePoint. The possible values are: `important`, `warning`, `error`, `fatalError`, `unknownFutureValue`.|
|eventDateTime|DateTimeOffset|The date and time when the job status changes to a specific type of **sharePointMigrationJobErrorEvent**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|id|String|The ID of a **sharePointMigrationJobErrorEvent**. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|jobId|String|The unique identifier of a migration job. Read-only. Only on OneDrive and SharePoint. Inherited from [sharePointMigrationEvent](../resources/sharepointmigrationevent.md).|
|objectId|String|The object ID. Read-only. Only on OneDrive and SharePoint.|
|objectType|sharePointMigrationObjectType|The object type. Read-only. Only on OneDrive and SharePoint. The possible values are: `site`, `web`, `folder`, `list`, `listItem`, `file`, `alert`, `sharedWithObject`, `invalid`, `unknownFutureValue`.|
|objectUrl|String|The object URL. Read-only. Only on OneDrive and SharePoint.|
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
  "correlationId": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "errorLevel": {"@odata.type": "microsoft.graph.sharePointMigrationJobErrorLevel"},
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "jobId": "String",
  "objectId": "String",
  "objectType": {"@odata.type": "microsoft.graph.sharePointMigrationObjectType"},
  "objectUrl": "String",
  "totalRetryCount": "Int32"
}
```
