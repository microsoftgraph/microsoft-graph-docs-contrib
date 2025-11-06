---
title: "crossTenantMigrationJob: validate"
description: "Validate the configuration of a crossTenantMigrationJob"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# crossTenantMigrationJob: validate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the configuration of a crossTenantMigrationJob.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-validate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-validate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs/validate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the crossTenantMigrationJob to validate the configuratio of.|
|completeAfterDateTime|String|When the CrossTenantMigrationJob|
|sourceTenantId|String|Source tenant for the CrossTenantMigrationJob|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|Exchange migration settings for the CrossTenantMigrationJob|
|workloads|String collection|Workloads to validate for the CrossTenantMigrationJob  |
|resourceType|String|Type of resource in the CrossTenantMigrationJob.|
|resources|String collection|Identifiers of the users in the CrossTenantMigrationJob to validate|



## Response

If successful, this action returns a `202 ACCEPTED` response code and a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "crosstenantmigrationjobthis.validate"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/validate
Content-Type: application/json

{
  "displayName": "String",
  "completeAfterDateTime": "String",
  "sourceTenantId": "String",
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
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

