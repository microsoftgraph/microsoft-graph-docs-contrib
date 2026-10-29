---
title: "Update roleManagementCustomCalloutExtension"
description: "Update the properties of a roleManagementCustomCalloutExtension object."
author: "amanswaika"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 10/19/2026
---

# Update roleManagementCustomCalloutExtension

Namespace: microsoft.graph

Update the properties of a roleManagementCustomCalloutExtension object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rolemanagementcustomcalloutextension_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/rolemanagementcustomcalloutextension-update-permissions.md)]

[!INCLUDE [rbac-pim-custom-extensions-apis](../includes/rbac-for-apis/rbac-pim-custom-extensions-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /identityGovernance/privilegedAccess/customExtensions/{roleManagementCustomCalloutExtensionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintain their previous values or are recalculated based on changes to other property values.

To enable or disable the custom extension, set the **isEnabled** property to `true` or `false`, respectively.

## Response

If successful, this method returns a `200 OK` response code and an updated [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) object in the response body.

## Example

### Request

The following example enables the custom extension and updates the client configuration and custom attributes.

<!-- {
  "blockType": "request",
  "name": "update_rolemanagementcustomcalloutextension"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/customExtensions/a1b2c3d4-e5f6-4a5b-8c9d-0e1f2a3b4c5d
Content-Type: application/json

{
  "description": "Validates ticket information and cost center",
  "customAttributes": ["department", "costCenter", "employeeType"],
  "isEnabled": true,
  "clientConfiguration": {
    "timeoutInMilliseconds": 20000,
    "maximumRetries": 5
  }
}
```

### Response

The following example shows the response.

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
  "description": "Validates ticket information and cost center",
  "resourceType": "entraRoles",
  "type": "preApproval",
  "customAttributes": ["department", "costCenter", "employeeType"],
  "isEnabled": true,
  "clientConfiguration": {
    "timeoutInMilliseconds": 20000,
    "maximumRetries": 5
  }
}
```
