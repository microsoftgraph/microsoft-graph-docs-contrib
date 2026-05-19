---
title: "Get deviceRegistrationPolicy"
description: "Read the properties and relationships of a deviceRegistrationPolicy object."
author: "michaelrm97"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 03/20/2026
---

# Get deviceRegistrationPolicy

Namespace: microsoft.graph

Read the properties and relationships of a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object. Represents deviceRegistrationPolicy quota restrictions, additional authentication, and authorization policies to register device identities to your organization.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "deviceregistrationpolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/deviceregistrationpolicy-get-permissions.md)]

[!INCLUDE [rbac-device-registration-policy-apis-read](../includes/rbac-for-apis/rbac-device-registration-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /policies/deviceRegistrationPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_deviceregistrationpolicy_v1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/deviceRegistrationPolicy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-deviceregistrationpolicy-v1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-deviceregistrationpolicy-v1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-deviceregistrationpolicy-v1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-deviceregistrationpolicy-v1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-deviceregistrationpolicy-v1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-deviceregistrationpolicy-v1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-deviceregistrationpolicy-v1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response with default settings for the device registration policy.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceRegistrationPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#deviceRegistrationPolicy",
  "id": "deviceRegistrationPolicy",
  "displayName": "Device Registration Policy",
  "description": "Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks",
  "userDeviceQuota": 2,
  "multiFactorAuthConfiguration": "notRequired",
  "azureADRegistration": {
    "isAdminConfigurable": false,
    "allowedToRegister": {
      "@odata.type": "#microsoft.graph.noDeviceRegistrationMembership"
    }
  },
  "azureADJoin": {
    "isAdminConfigurable": true,
    "allowedToJoin": {
      "@odata.type": "#microsoft.graph.allDeviceRegistrationMembership"
    },
    "localAdmins": {
      "enableGlobalAdmins": true,
      "registeringUsers": {
        "@odata.type": "#microsoft.graph.enumeratedDeviceRegistrationMembership",
        "users": ["3c8ef067-8b96-44de-b2ae-557dfa0f97a0"],
        "groups": []
      }
    }
  },
  "localAdminPassword": {
    "isEnabled": false
  }
}
```
