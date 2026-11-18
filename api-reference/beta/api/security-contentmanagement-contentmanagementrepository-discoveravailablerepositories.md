---
title: "contentManagementRepository: discoverAvailableRepositories"
description: "Discover source-control repositories accessible through a supplied write-only **accessCredential**. The result contains up to 200 transient candidates and isn't paged."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# contentManagementRepository: discoverAvailableRepositories

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Discover source-control repositories accessible through a supplied write-only **accessCredential**. The result contains up to 200 transient candidates and isn't paged.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-contentmanagement-contentmanagementrepository-discoveravailablerepositories-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentmanagementrepository-discoveravailablerepositories-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/contentManagement/repositories/microsoft.graph.security.contentManagement.discoverAvailableRepositories
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer token. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required when a JSON body is supplied.|

## Request body

In the request body, supply a JSON representation of the parameters.
The following table describes the supported parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|accessCredential|[microsoft.graph.security.contentManagement.repositoryAccessCredential](../resources/security-contentmanagement-repositoryaccesscredential.md)|Required. Provider credential authorizing repository discovery. Not persisted; used only for this call. Write-only; never returned.|

## Response

If successful, this action returns a `200 OK` response code and a collection of [microsoft.graph.security.contentManagement.discoveredRepository](../resources/security-contentmanagement-discoveredrepository.md) objects in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "discoveravailablerepositories_repository" } -->

```http
POST https://graph.microsoft.com/beta/security/contentManagement/repositories/microsoft.graph.security.contentManagement.discoverAvailableRepositories
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
  "@odata.type": "microsoft.graph.security.contentManagement.discoveredRepository",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.contentManagement.discoveredRepository",
      "url": "https://github.com/contoso/detections",
      "fullName": "contoso/detections",
      "branches": [
        "main",
        "dev"
      ]
    }
  ]
}
```
