---
title: "List roleManagementCustomCalloutExtension objects"
description: "Get the custom extensions configured for Privileged Identity Management."
author: "amanswaika"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List roleManagementCustomCalloutExtension objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) objects configured for Privileged Identity Management (PIM).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "privilegedaccessroot-list-customextensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessroot-list-customextensions-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/privilegedAccess/customExtensions
```

## Optional query parameters

This method supports the `$filter` (`eq`) OData query parameter on the **resourceType** property and the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer|Use `include-unknown-enum-members` to return the `applicationAuthorization` and `appRoles` members of **customExtensionResourceType**. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) objects in the response body.

## Examples

### Request

The following example lists the configured custom extensions.

<!-- {
  "blockType": "request",
  "name": "list_rolemanagementcustomcalloutextension"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/customExtensions
Prefer: include-unknown-enum-members
```

### Response

The following example shows the response. The response might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.roleManagementCustomCalloutExtension)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
