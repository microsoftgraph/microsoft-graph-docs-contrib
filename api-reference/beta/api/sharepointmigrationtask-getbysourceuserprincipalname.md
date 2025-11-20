---
title: "sharePointMigrationTask: getBySourceUserPrincipalName"
description: "Get a sharePointMigrationTask that was previously created for a user, using the source user principal name."
author: "Joey-King"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# sharePointMigrationTask: getBySourceUserPrincipalName

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) that was previously created for a user, using the source **userPrincipalName**. The returned **sharePointMigrationTask** object includes the source and target site URLs, migration status, optional timestamps (**startedDateTime** and **finishedDateTime**), and error details about issues during processing.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointmigrationtask-getbysourceuserprincipalname-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointmigrationtask-getbysourceuserprincipalname-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/sharePoint/migrations/crossOrganizationMigrationTasks/getBySourceUserPrincipalName(sourcePrincipalName={sourcePrincipalName})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|sourcePrincipalName|String|Source user principal name.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [sharePointMigrationTask](../resources/sharepointmigrationtask.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointmigrationtaskthis.getbysourceuserprincipalname"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/sharePoint/migrations/crossOrganizationMigrationTasks/getBySourceUserPrincipalName(sourcePrincipalName=@upn)?@upn='contoso'
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointMigrationTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "3ed6d46d-13a3-4995-b6ea-a74a20b1fac0",
  "status": "success",
  "startedDateTime": "2025-7-18T09:08:04.451Z",
  "lastUpdatedDateTime": "2025-7-18T09:13:46.028Z",
  "finishedDateTime": "2025-7-18T09:13:46.028Z",
  "parameters": {
    "@odata.type": "#microsoft.graph.sharePointSiteMigrationTaskParameters",
    "targetOrganizationId": "3ef4e46d-13a3-4895-b6ea-a74a20hu728h",
    "targetOrganizationHost": "https://fabrico-my.sharepoint.com",
    "sourceSiteUrl": "https://contoso.sharepoint.com/sites/IT",
    "targetSiteUrl": "https://fabrico.sharepoint.com/sites/IT"
  }
}
```
