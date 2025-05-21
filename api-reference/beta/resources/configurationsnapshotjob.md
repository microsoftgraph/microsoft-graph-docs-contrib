---
title: "configurationSnapshotJob resource type"
description: "It is an asynchronous job that is created when an admin creates a snapshot."
author: "swatya"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# configurationSnapshotJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**It is an asynchronous job that is created when an admin creates or triggers a snapshot. Once an admin hit the createSnapshot endpoint, a configurationSnapshotJob is created which will run asynchronously. Once this job is successfully completed, the admin can then download the extraction.**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationsnapshotjobs.md)|[configurationSnapshotJob](../resources/configurationsnapshotjob.md) collection|Get a list of the configurationSnapshotJob objects and their properties.|
|[Get](../api/configurationsnapshotjob-get.md)|[configurationSnapshotJob](../resources/configurationsnapshotjob.md)|Read the properties and relationships of a configurationSnapshotJob object.|
|[Delete](../api/configurationmanagement-delete-configurationsnapshotjobs.md)|None|Delete a configurationSnapshotJob object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**The date and time when the snapshot job was completed**|
|createdBy|[identitySet](../resources/identityset.md)|**The user who triggered the snapshot**|
|createdDateTime|DateTimeOffset|**The date and time when the snapshot job was created**|
|description|String|**User friendly description of the snapshot given by the user. Optional.**|
|displayName|String|**User friendly name given by the user while triggering a snapshot. Required.**|
|errorDetails|String collection|**Details of errors related to reasons why snapshot could not get completed [This won’t be visible to the customer, by default.]**|
|id|String|**Globally unique identifier / GUID of the snapshot job.** Inherits from [entity](../resources/entity.md)|
|resourceLocation|String|**The URL at which the snapshot file will reside**|
|resources|String collection|**Name of all resources put in the request body by the user who triggered the snapshot [Fetched by the system]**|
|status|snapshotJobStatus|**Status of the snapshot.**.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, and `partiallySuccessful`.
|tenantId|String|**Globally unique identifier / GUID of the tenant for which the snapshot is triggered.**|

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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "tenantId": "String",
  "status": "String",
  "resources": [
    "String"
  ],
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "errorDetails": [
    "String"
  ]
}
```