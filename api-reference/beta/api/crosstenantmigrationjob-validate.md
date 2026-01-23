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

Validate the configuration of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md). This function doesn't migrate any content, but goes through validation for the specified workloads to find any errors or misconfigurations that would affect an actual migration job. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-validate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-validate-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

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
|displayName|String|Name of the crossTenantMigrationJob to validate|
|completeAfterDateTime|String|When the CrossTenantMigrationJob|
|sourceTenantId|String|Source tenant for the CrossTenantMigrationJob|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|Exchange migration settings for the CrossTenantMigrationJob|
|workloads|String collection|Workloads to validate for the CrossTenantMigrationJob  |
|resourceType|String|Type of resource in the CrossTenantMigrationJob.|
|resources|String collection|Identifiers of the users in the CrossTenantMigrationJob to validate|



## Response

If successful, this action returns a `201 Created` response code and a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) in the response body.

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
  "displayName": "Contoso_migration_validation_job",
  "completeAfterDateTime": "2025-05-22T17:14:52Z",
  "sourceTenantId": "12345678-1234-1234-1234-123456789012",
  "exchangeSettings": {
    "targetDeliveryDomain": "fabrikam.com",
    "sourceEndpoint": "EXOHandler"
  },
  "resources": [
    "b5b8bc4f-0e36-4ad3-8ddf-248b68260b89",
    "ac87d040-a081-426c-a73b-81133f458a29"
  ],
  "workloads": [ "Teams" ],
  "resourceType": "Users"
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.crossTenantMigrationJob",
  "id": "0d1d9dbb-7676-4731-a601-5e8406fd7bcf",
  "displayName": "Contoso_migration_validation_job",
  "status": "validateSubmitted",
  "jobType": "validate",
  "message": "Validation job has been submitted successfully",
  "completeAfterDateTime": "2025-05-22T17:14:52Z",
  "sourceTenantId": "12345678-1234-1234-1234-123456789012",
  "targetTenantId": "87654321-4321-4321-4321-210987654321",
  "resourceType": "users",
  "resources": [],
  "workloads": [
    "teams"
  ],
  "createdBy": "admin@fabrikam.onmicrosoft.com",
  "createdDateTime": "2025-11-07T00:19:21.4810014Z",
  "lastUpdatedDateTime": "2025-11-07T00:19:21Z",
  "exchangeSettings": {
    "targetDeliveryDomain": "fabrikam.com",
    "sourceEndpoint": "EXOHandler"
  }
}
```

