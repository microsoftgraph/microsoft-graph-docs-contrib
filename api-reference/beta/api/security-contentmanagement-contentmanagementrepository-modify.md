---
title: "contentManagementRepository: modify"
description: "Modify a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Changing **contentTypes** requires **accessCredential** to revalidate provider access; display-name and description changes don't."
author: "AlexBrohshtut"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# contentManagementRepository: modify

Namespace: microsoft.graph.security.contentManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Modify a [contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md). Changing **contentTypes** requires **accessCredential** to revalidate provider access; display-name and description changes don't.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-contentmanagement-contentmanagementrepository-modify-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-contentmanagement-contentmanagementrepository-modify-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /security/contentManagement/repositories/{contentManagementRepositoryId}/microsoft.graph.security.contentManagement.modify
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

In the request body, supply a JSON representation of the parameters.
Only **displayName**, **description**, **contentTypes**, and **accessCredential** can be changed. **repoType**, **sourceLocation**, **deploymentScope**, and **deploymentIdentity** are immutable and rejected when supplied.

|Parameter|Type|Description|
|:---|:---|:---|
|displayName|String|Optional. Human-readable name of the connection.|
|description|String|Optional. Description of the connection.|
|contentTypes|[microsoft.graph.security.contentManagement.repositoryContentType](../resources/enums-security-contentmanagement.md#repositorycontenttype-values) collection|Optional. Content kinds this repository is configured to deploy. Requires **accessCredential** to revalidate provider access.|
|accessCredential|[microsoft.graph.security.contentManagement.repositoryAccessCredential](../resources/security-contentmanagement-repositoryaccesscredential.md)|Optional. Provider credential requests republishing; metadata-only changes do not require it. Write-only; never returned.|

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.security.contentManagement.contentManagementRepository](../resources/security-contentmanagement-contentmanagementrepository.md) in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "modify_repository" } -->

```http
POST https://graph.microsoft.com/beta/security/contentManagement/repositories/5f8d1c2e-3b4a-4c9d-9e10-2a3b4c5d6e7f/microsoft.graph.security.contentManagement.modify
Content-Type: application/json

{
  "displayName": "Contoso detections and hunting",
  "contentTypes": [
    "customDetection"
  ],
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
  "@odata.type": "microsoft.graph.security.contentManagement.contentManagementRepository"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.contentManagement.contentManagementRepository",
  "id": "5f8d1c2e-3b4a-4c9d-9e10-2a3b4c5d6e7f",
  "displayName": "Contoso detections and hunting",
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
