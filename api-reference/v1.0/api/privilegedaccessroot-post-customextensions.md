---
title: "Create roleManagementCustomCalloutExtension"
description: "Create a new roleManagementCustomCalloutExtension object for Privileged Identity Management (PIM)."
author: "amanswaika"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/19/2026
---

# Create roleManagementCustomCalloutExtension

Namespace: microsoft.graph

Create a new roleManagementCustomCalloutExtension object for Privileged Identity Management (PIM).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessroot_post_customextensions" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessroot-post-customextensions-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/privilegedAccess/customExtensions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object. The **resourceType** and **type** properties are required.

## Response

If successful, this method returns a `201 Created` response code and a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object in the response body.

## Example

### Request

The following example creates a preapproval extension for PIM for Microsoft Entra roles.

<!-- {
  "blockType": "request",
  "name": "privilegedaccessroot_create_customextension"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/customExtensions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.roleManagementCustomCalloutExtension",
  "displayName": "Role assignment ticket validation",
  "description": "Validates ticket information against the service desk",
  "resourceType": "entraRoles",
  "type": "preApproval",
  "customAttributes": ["department", "costCenter"],
  "isEnabled": true,
  "endpointConfiguration": {
    "@odata.type": "#microsoft.graph.httpRequestEndpoint",
    "targetUrl": "https://api.contoso.com/webhooks/role-assignments"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 10000,
    "maximumRetries": 3
  },
  "authenticationConfiguration": {
    "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "api://api.contoso.com/00001111-aaaa-2222-bbbb-3333cccc4444"
  }
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.roleManagementCustomCalloutExtension"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.roleManagementCustomCalloutExtension",
  "id": "a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d",
  "displayName": "Role assignment ticket validation",
  "description": "Validates ticket information against the service desk",
  "resourceType": "entraRoles",
  "type": "preApproval",
  "customAttributes": ["department", "costCenter"],
  "isEnabled": true,
  "endpointConfiguration": {
    "@odata.type": "#microsoft.graph.httpRequestEndpoint",
    "targetUrl": "https://api.contoso.com/webhooks/role-assignments"
  },
  "clientConfiguration": {
    "timeoutInMilliseconds": 10000,
    "maximumRetries": 3
  },
  "authenticationConfiguration": {
    "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",
    "resourceId": "api://api.contoso.com/00001111-aaaa-2222-bbbb-3333cccc4444"
  }
}
```
