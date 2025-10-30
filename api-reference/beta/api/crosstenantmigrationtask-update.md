---
title: "Update crossTenantMigrationTask"
description: "Update the properties of a crossTenantMigrationTask object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update crossTenantMigrationTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a crossTenantMigrationTask object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationtask-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationtask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users/{crossTenantMigrationTaskId}
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
|taskType|String|**TODO: Add Description** Required.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|currentStatus|[crossTenantMigrationServiceStatusDetails](../resources/crosstenantmigrationservicestatusdetails.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_crosstenantmigrationtask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users/{crossTenantMigrationTaskId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.crossTenantMigrationTask",
  "taskType": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "currentStatus": [
    {
      "@odata.type": "microsoft.graph.crossTenantMigrationServiceStatusDetails"
    }
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
```

