---
title: "Get contentManagementRepository"
description: "Get a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) by its service-generated identifier."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get contentManagementRepository

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) by its service-generated identifier.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-contentmanagement-contentmanagementrepository-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentmanagementrepository-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/contentManagement/repositories/{contentManagementRepositoryId}
```

## Optional query parameters

This method supports `$select`. It doesn't support `$search`, `$expand`, or delta queries.

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|contentManagementRepositoryId|String|The service-generated identifier of the [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md).|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer token. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "get_repository" } -->

```http
GET https://graph.microsoft.com/beta/security/contentManagement/repositories/5f8d1c2e-3b4a-4c9d-9e10-2a3b4c5d6e7f
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.contentManagement.contentManagementRepository"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentManagementRepository",
  "id": "5f8d1c2e-3b4a-4c9d-9e10-2a3b4c5d6e7f",
  "displayName": "Contoso detections",
  "description": "Detection-as-code content for Contoso",
  "repoType": "gitHub",
  "contentTypes": [
    "customDetection"
  ],
  "sourceLocation": {
    "url": "https://github.com/contoso/detections",
    "branch": "main",
    "deploymentLogsUrl": null
  },
  "deploymentIdentity": {
    "@odata.type": "#microsoft.graph.security.contentManagement.servicePrincipalDeploymentIdentity",
    "applicationId": "00000000-1111-2222-3333-444444444444"
  },
  "deploymentScope": {
    "scopeType": "managementGroup",
    "id": "/providers/Microsoft.Management/managementGroups/contoso-secops"
  },
  "servicePrincipal": null,
  "workloadIdentityFederation": null,
  "lastDeploymentInfo": null,
  "pullRequest": null,
  "systemData": null
}
```
