---
title: "Get crossTenantAccessPolicyConfigurationDefault"
description: "Read the default configuration of a cross-tenant access policy."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Get crossTenantAccessPolicyConfigurationDefault

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the [default configuration](../resources/crosstenantaccesspolicyconfigurationdefault.md) of a cross-tenant access policy. This default configuration may be the service default assigned by Microsoft Entra ID (**isServiceDefault** is `true`) or may be customized in your tenant (**isServiceDefault** is `false`).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-get-permissions.md)]

[!INCLUDE [rbac-xtap-apis-read](../includes/rbac-for-apis/rbac-xtap-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /policies/crossTenantAccessPolicy/default
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [crossTenantAccessPolicyConfigurationDefault](../resources/crosstenantaccesspolicyconfigurationdefault.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_crosstenantaccesspolicyconfigurationdefault"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-crosstenantaccesspolicyconfigurationdefault-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-crosstenantaccesspolicyconfigurationdefault-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-crosstenantaccesspolicyconfigurationdefault-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-crosstenantaccesspolicyconfigurationdefault-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-crosstenantaccesspolicyconfigurationdefault-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-crosstenantaccesspolicyconfigurationdefault-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-crosstenantaccesspolicyconfigurationdefault-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-crosstenantaccesspolicyconfigurationdefault-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following response object shows a default cross-tenant policy inherited from Microsoft Entra ID, as identified by **isServiceDefault** set to `true`.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationDefault"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isServiceDefault": true,
  "inboundTrust":
  {
    "isMfaAccepted": false,
    "isCompliantDeviceAccepted": false,
    "isHybridAzureADJoinedDeviceAccepted": false,
  },
  "automaticUserConsentSettings":
  {
    "inboundAllowed": false,
    "outboundAllowed": false
  },
  "b2bCollaborationOutbound":
  {
    "usersAndGroups":
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllApplications",
          "targetType": "application"
        }
      ]
    }
  },
  "b2bCollaborationInbound":
  {
    "usersAndGroups":
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllApplications",
          "targetType": "application"
        }
      ]
    }
  },
  "b2bDirectConnectOutbound":
  {
    "usersAndGroups":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllApplications",
          "targetType": "application"
        }
      ]
    }
  },
  "b2bDirectConnectInbound":
  {
    "usersAndGroups":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllApplications",
          "targetType": "application"
        }
      ]
    }
  },
  "tenantRestrictions":
  {
    "usersAndGroups":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    },
    "applications":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "AllApplications",
          "targetType": "application"
        }
      ]
    }
  },
  "invitationRedemptionIdentityProviderConfiguration": 
  { 
        "primaryIdentityProviderPrecedenceOrder": [ 
            "externalFederation", 
            "azureActiveDirectory", 
            "socialIdentityProviders" 
        ],
        "fallbackIdentityProvider": "defaultConfiguredIdp" 
  }
}
```
