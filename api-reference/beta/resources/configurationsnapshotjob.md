---
title: "configurationSnapshotJob resource type"
description: "Represents an asynchronous job that is created when an admin creates a snapshot."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationSnapshotJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an asynchronous job that is created when an admin creates a snapshot. When an admin calls the [configurationBaseline: createSnapshot](../api/configurationbaseline-createsnapshot.md) API, a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) is created and runs asynchronously. Once the job completes successfully, the admin can download the extraction.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationsnapshotjobs.md)|[configurationSnapshotJob](../resources/configurationsnapshotjob.md) collection|Get a list of the [configurationSnapshotJob](../resources/configurationsnapshotjob.md) objects and their properties.|
|[Get](../api/configurationsnapshotjob-get.md)|[configurationSnapshotJob](../resources/configurationsnapshotjob.md)|Read the properties and relationships of a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) object.|
|[Delete](../api/configurationsnapshotjob-delete.md)|None|Delete a [configurationSnapshotJob](../resources/configurationsnapshotjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date and time when the snapshot job was completed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|createdBy|[identitySet](../resources/identityset.md)|The user who triggered the snapshot.|
|createdDateTime|DateTimeOffset|The date and time when the snapshot job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|User-friendly description of the snapshot given by the user.|
|displayName|String|User-friendly name provided by the user during snapshot creation.|
|errorDetails|String collection|Details of errors related to the reasons why the snapshot can't complete.|
|id|String|Globally unique identifier (GUID) of the snapshot job. Inherited from [entity](../resources/entity.md).|
|resourceLocation|String|The URL at which the snapshot file resides.|
|resources|String collection|The names of all resources included in the request body by the user who created the snapshot. Fetched by the system.|
|status|snapshotJobStatus|Status of the snapshot. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`, `partiallySuccessful`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `partiallySuccessful`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the snapshot is created.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationSnapshotJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationSnapshotJob",
  "completedDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "errorDetails": ["String"],
  "id": "String (identifier)",
  "resourceLocation": "String",
  "resources": ["String"],
  "status": "String",
  "tenantId": "String"
}
```
