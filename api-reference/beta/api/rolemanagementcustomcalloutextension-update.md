---
title: "Update roleManagementCustomCalloutExtension"
description: "Update the properties of a roleManagementCustomCalloutExtension object."
author: "amanswaika"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Update roleManagementCustomCalloutExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rolemanagementcustomcalloutextension_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/rolemanagementcustomcalloutextension-update-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/privilegedAccess/customExtensions/{roleManagementCustomCalloutExtensionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|authenticationConfiguration|[customExtensionAuthenticationConfiguration](../resources/customextensionauthenticationconfiguration.md)|The authentication configuration used to secure calls to the external app.|
|clientConfiguration|[customExtensionClientConfiguration](../resources/customextensionclientconfiguration.md)|The timeout and retry settings for calls to the external app.|
|customAttributes|String collection|The custom attribute names to include in the callout payload.|
|description|String|The description of the custom extension.|
|displayName|String|The display name of the custom extension.|
|endpointConfiguration|[customExtensionEndpointConfiguration](../resources/customextensionendpointconfiguration.md)|The configuration for the external endpoint that PIM calls.|
|isEnabled|Boolean|Indicates whether the custom extension is enabled.|
|resourceType|[customExtensionResourceType](../resources/enums.md#customextensionresourcetype-values)|The PIM provider to which the extension applies. The possible values are: `entraRoles`, `azureResources`, `entraGroups`, `unknownFutureValue`, `applicationAuthorization`, `appRoles`.|
|type|[customCalloutExtensionType](../resources/enums.md#customcalloutextensiontype-values)|The lifecycle stage at which PIM invokes the extension. The possible values are: `preApproval`, `postApproval`, `grant`, `revoke`, `unknownFutureValue`.|

For the `applicationAuthorization` and `appRoles` values of **resourceType** to be returned in responses, use the `Prefer: include-unknown-enum-members` request header. For more information, see [Handling future members in evolvable enumerations](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

## Response

If successful, this method returns a `200 OK` response code and an updated [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object in the response body.

## Examples

### Request

The following example disables a custom extension.

<!-- {
  "blockType": "request",
  "name": "update_rolemanagementcustomcalloutextension"
}
-->
```http
PATCH https://graph.microsoft.com/beta/identityGovernance/privilegedAccess/customExtensions/a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d
Content-Type: application/json

{
  "isEnabled": false
}
```

### Response

The following example shows the response. The response might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.roleManagementCustomCalloutExtension"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.roleManagementCustomCalloutExtension",
  "id": "a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d",
  "displayName": "Role assignment ticket validation",
  "resourceType": "entraRoles",
  "type": "preApproval",
  "customAttributes": ["department", "costCenter"],
  "isEnabled": false
}
```
