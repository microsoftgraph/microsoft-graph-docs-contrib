---
title: "contentManagementRepository: disconnect"
description: "Disconnect a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). The provider **accessCredential** is optional: without it, the connection is still removed but repository-side artifacts may remain and are reported in **warning**. Remove the deployment identity to stop further pushes."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# contentManagementRepository: disconnect

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Disconnect a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). The provider **accessCredential** is optional: without it, the connection is still removed but repository-side artifacts may remain and are reported in **warning**. Remove the deployment identity to stop further pushes.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-contentmanagement-contentmanagementrepository-disconnect-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentmanagementrepository-disconnect-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/contentManagement/repositories/{contentManagementRepositoryId}/microsoft.graph.security.contentManagement.disconnect
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|contentManagementRepositoryId|String|The service-generated identifier of the [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer token. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required when a JSON body is supplied.|

## Request body

The **accessCredential** parameter is optional. When supplied, it authorizes best-effort cleanup of repository-side artifacts; it isn't persisted or returned. Omit the request body to remove the connection without provider cleanup.

|Parameter|Type|Description|
|:---|:---|:---|
|accessCredential|[microsoft.graph.security.contentManagement.repositoryAccessCredential](../resources/security-contentmanagement-repositoryaccesscredential.md)|Optional. Provider credential for best-effort cleanup.|

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.repositoryDisconnectResult](../resources/security-contentmanagement-repositorydisconnectresult.md) in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "disconnect_repository" } -->

```http
POST https://graph.microsoft.com/beta/security/contentManagement/repositories/5f8d1c2e-3b4a-4c9d-9e10-2a3b4c5d6e7f/microsoft.graph.security.contentManagement.disconnect
Content-Type: application/json

{
  "accessCredential": {
    "@odata.type": "#microsoft.graph.security.contentManagement.repositoryPatCredential",
    "token": "ghp_example_token"
  }
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.repositoryDisconnectResult"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.contentManagement.repositoryDisconnectResult",
  "warning": null
}
```
