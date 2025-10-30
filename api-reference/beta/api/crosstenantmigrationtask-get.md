---
title: "Get crossTenantMigrationTask"
description: "Read the properties and relationships of crossTenantMigrationTask object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Get crossTenantMigrationTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationtask-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationtask-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users/{crossTenantMigrationTaskId}
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

If successful, this method returns a `200 OK` response code and a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_crosstenantmigrationtask"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users/{crossTenantMigrationTaskId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.crossTenantMigrationTask",
    "id": "5c316328-abcb-31a2-2bb7-53f15eea730c",
    "taskType": "String",
    "lastUpdatedDateTime": "String (timestamp)",
    "currentStatus": [
      {
        "@odata.type": "microsoft.graph.crossTenantMigrationServiceStatusDetails"
      }
    ]
  }
}
```

