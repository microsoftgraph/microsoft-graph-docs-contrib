---
title: "crossTenantMigrationJob resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# crossTenantMigrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Get a list of the crossTenantMigrationJob objects and their properties.|
|[Create](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new crossTenantMigrationJob object.|
|[Get](../api/crosstenantmigrationjob-get.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Read the properties and relationships of [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|
|[Update](../api/crosstenantmigrationjob-update.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Update the properties of a crossTenantMigrationJob object.|
|[Delete](../api/migrationsroot-delete-crosstenantmigrationjobs.md)|None|Delete a crossTenantMigrationJob object.|
|[cancel](../api/crosstenantmigrationjob-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|**TODO: Add Description**|
|[validate](../api/crosstenantmigrationjob-validate.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|**TODO: Add Description**|
|[List users](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|**TODO: Add a useful description.**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completeAfterDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|jobType|crossTenantMigrationJobType|**TODO: Add Description**. The possible values are: `validate`, `migrate`, `unknownFutureValue`.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|message|String|**TODO: Add Description**|
|resources|String collection|**TODO: Add Description**|
|resourceType|String|**TODO: Add Description**|
|sourceTenantId|String|**TODO: Add Description**|
|status|crossTenantMigrationJobStatus|**TODO: Add Description**. The possible values are: `submitted`, `approved`, `processing`, `cuttingOver`, `inProgress`, `completed`, `completedWithErrors`, `failed`, `cancelled`, `pendingCancel`, `adminActionRequired`, `validateSubmitted`, `validateProcessing`, `validateInProgress`, `validatePassed`, `validateFailed`, `pendingDelete`, `deleted`, `unknownFutureValue`.|
|targetTenantId|String|**TODO: Add Description**|
|workloads|String collection|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|users|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantMigrationJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantMigrationJob",
  "id": "String (identifier)",
  "displayName": "String",
  "jobType": "String",
  "sourceTenantId": "String",
  "targetTenantId": "String",
  "completeAfterDateTime": "String (timestamp)",
  "status": "String",
  "message": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "exchangeSettings": {
    "@odata.type": "microsoft.graph.exchangeOnlineCrossTenantMigrationSettings"
  },
  "workloads": [
    "String"
  ],
  "resourceType": "String",
  "resources": [
    "String"
  ]
}
```

