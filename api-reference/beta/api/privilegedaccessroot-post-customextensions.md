---
title: "Create roleManagementCustomCalloutExtension"
description: "Create a custom extension for Privileged Identity Management."
author: "amanswaika"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Create roleManagementCustomCalloutExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object for Privileged Identity Management (PIM).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "privilegedaccessroot-post-customextensions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessroot-post-customextensions-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /identityGovernance/privilegedAccess/customExtensions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object.

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration used to secure calls to the external app. Optional.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The timeout and retry settings for calls to the external app. Optional.|
|customAttributes|String collection|The custom attribute names to include in the callout payload. Required.|
|description|String|The description of the custom extension. Optional.|
|displayName|String|The display name of the custom extension. Optional.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the external endpoint that PIM calls. Optional.|
|isEnabled|Boolean|Indicates whether the custom extension is enabled. Optional.|
|resourceType|[customExtensionResourceType](../resources/enums.md#customextensionresourcetype-values)|The PIM provider to which the extension applies. The possible values are: `entraRoles`, `azureResources`, `entraGroups`, `unknownFutureValue`, `applicationAuthorization`, `appRoles`. Required.|
|type|[customCalloutExtensionType](../resources/enums.md#customcalloutextensiontype-values)|The lifecycle stage at which PIM invokes the extension. The possible values are: `preApproval`, `postApproval`, `grant`, `revoke`, `unknownFutureValue`. Required.|

For the `applicationAuthorization` and `appRoles` values of **resourceType** to be returned in responses, use the `Prefer: include-unknown-enum-members` request header. For more information, see [Handling future members in evolvable enumerations](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Response

If successful, this method returns a `201 Created` response code and a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object in the response body.

## Examples

### Request

The following example creates an enabled preapproval extension for PIM for Microsoft Entra roles.

<!-- {
  "blockType": "request",
  "name": "create_rolemanagementcustomcalloutextension_from_privilegedaccessroot"
}
-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/customExtensions
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
