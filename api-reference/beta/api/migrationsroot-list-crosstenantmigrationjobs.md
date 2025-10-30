---
title: "List crossTenantMigrationJob objects"
description: "Get a list of the crossTenantMigrationJob objects and their properties."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List crossTenantMigrationJob objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the crossTenantMigrationJob objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "migrationsroot-list-crosstenantmigrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/migrationsroot-list-crosstenantmigrationjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/migrations/crossTenantMigrationJobs
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_crosstenantmigrationjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs
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
  "value": [
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
  ]
}
```

