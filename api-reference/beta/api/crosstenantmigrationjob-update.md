---
title: "Update crossTenantMigrationJob"
description: "Update the properties of a crossTenantMigrationJob object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update crossTenantMigrationJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a crossTenantMigrationJob object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|
|jobType|crossTenantMigrationJobType|**TODO: Add Description**. The possible values are: `validate`, `migrate`, `unknownFutureValue`. Required.|
|sourceTenantId|String|**TODO: Add Description** Required.|
|targetTenantId|String|**TODO: Add Description** Required.|
|completeAfterDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|status|crossTenantMigrationJobStatus|**TODO: Add Description**. The possible values are: `submitted`, `approved`, `processing`, `cuttingOver`, `inProgress`, `completed`, `completedWithErrors`, `failed`, `cancelled`, `pendingCancel`, `adminActionRequired`, `validateSubmitted`, `validateProcessing`, `validateInProgress`, `validatePassed`, `validateFailed`, `pendingDelete`, `deleted`, `unknownFutureValue`. Required.|
|message|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|createdBy|String|**TODO: Add Description** Required.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|**TODO: Add Description** Optional.|
|workloads|String collection|**TODO: Add Description** Required.|
|resourceType|String|**TODO: Add Description** Required.|
|resources|String collection|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_crosstenantmigrationjob"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantMigrationJob",
  "displayName": "String",
  "jobType": "String",
  "sourceTenantId": "String",
  "targetTenantId": "String",
  "completeAfterDateTime": "String (timestamp)",
  "status": "String",
  "message": "String",
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


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantMigrationJob",
  "id": "1a2fbf52-396e-c3ed-6a65-9772e12d8a43",
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

