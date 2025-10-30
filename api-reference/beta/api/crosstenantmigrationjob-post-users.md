---
title: "Create crossTenantMigrationTask"
description: "Create a new crossTenantMigrationTask object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create crossTenantMigrationTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new crossTenantMigrationTask object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-post-users-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-post-users-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object.

You can specify the following properties when creating a **crossTenantMigrationTask**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|taskType|String|**TODO: Add Description** Required.|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|currentStatus|[crossTenantMigrationServiceStatusDetails](../resources/crosstenantmigrationservicestatusdetails.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_crosstenantmigrationtask_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/users
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
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationTask"
}
-->
``` http
HTTP/1.1 201 Created
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

