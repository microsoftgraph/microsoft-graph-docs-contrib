---
title: "Update crossTenantAccessPolicyConfigurationDefault"
description: "Update the default configuration of a cross-tenant access policy."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Update crossTenantAccessPolicyConfigurationDefault

Namespace: microsoft.graph

Update the [default configuration](../resources/crosstenantaccesspolicyconfigurationdefault.md) of a cross-tenant access policy.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-update-permissions.md)]

[!INCLUDE [rbac-xtap-apis-write](../includes/rbac-for-apis/rbac-xtap-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /policies/crossTenantAccessPolicy/default
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
| appServiceConnectInbound | [crossTenantAccessPolicyAppServiceConnectSetting](../resources/crosstenantaccesspolicyappserviceconnectsetting.md) | Defines your default configuration for inbound app service connect settings that control which applications can connect across tenant boundaries. |
| b2bCollaborationInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B collaboration. |
| b2bCollaborationOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B collaboration. |
| b2bDirectConnectInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B direct connect. |
| b2bDirectConnectOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B direct connect. |
| inboundTrust | [crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md) | Determines the default configuration for trusting other Conditional Access claims from external Microsoft Entra organizations. |
| m365CollaborationInbound | [crossTenantAccessPolicyM365CollaborationInboundSetting](../resources/crosstenantaccesspolicym365collaborationinboundsetting.md) | Defines your default configuration for inbound Microsoft 365 collaboration settings that determine which users from other organizations can collaborate with your organization using Microsoft 365 apps. |
| m365CollaborationOutbound | [crossTenantAccessPolicyM365CollaborationOutboundSetting](../resources/crosstenantaccesspolicym365collaborationoutboundsetting.md) | Defines your default configuration for outbound Microsoft 365 collaboration settings that determine which users in your organization can collaborate with other organizations using Microsoft 365 apps. |
| tenantRestrictions  |[crossTenantAccessPolicyTenantRestrictions](../resources/crosstenantaccesspolicytenantrestrictions.md) | Defines the default tenant restrictions configuration for users in your organization who access an external organization on your network or devices. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Block outbound B2B collaboration for a group of users

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyconfigurationdefault"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/default
Content-Type: application/json

{
  "b2bCollaborationOutbound":
  {
    "usersAndGroups":
    {
      "accessType": "blocked",
      "targets": [
        {
          "target": "0be493dc-cb56-4a53-936f-9cf64410b8b0",
          "targetType": "group"
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
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-crosstenantaccesspolicyconfigurationdefault-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-crosstenantaccesspolicyconfigurationdefault-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-crosstenantaccesspolicyconfigurationdefault-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-crosstenantaccesspolicyconfigurationdefault-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-crosstenantaccesspolicyconfigurationdefault-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-crosstenantaccesspolicyconfigurationdefault-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-crosstenantaccesspolicyconfigurationdefault-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

### Example 2: Update default invitation redemption configuration

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyconfigurationdefault_idpconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/default
Content-Type: application/json

{
  "invitationRedemptionIdentityProviderConfiguration": { 
    "primaryIdentityProviderPrecedenceOrder": [ 
        "externalFederation", 
        "azureActiveDirectory", 
        "socialIdentityProviders" 
    ], 
    "fallbackIdentityProvider": "defaultConfiguredIdp" 
  } 
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

### Example 3: Disallow Microsoft accounts as an option for redeeming B2B invitations

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyconfigurationdefault_idpconfiguration_noMsa"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/default
Content-Type: application/json

{
  "invitationRedemptionIdentityProviderConfiguration": { 
    "primaryIdentityProviderPrecedenceOrder": [ 
        "externalFederation", 
        "azureActiveDirectory", 
        "socialIdentityProviders" 
    ], 
    "fallbackIdentityProvider": "emailOneTimePasscode" 
  } 
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-crosstenantaccesspolicyconfigurationdefault-idpconfiguration-nomsa-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

### Example 4: Configure Microsoft 365 collaboration settings

The following example shows how to configure the default cross-tenant access policy to allow inbound Microsoft 365 collaboration for all users.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesspolicyconfigurationdefault_m365collab"
}
-->

``` http
PATCH https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/default
Content-Type: application/json

{
  "m365CollaborationInbound": {
    "users": {
      "accessType": "allowed",
      "targets": [
        {
          "target": "AllUsers",
          "targetType": "user"
        }
      ]
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-crosstenantaccesspolicyconfigurationdefault-m365collab-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-crosstenantaccesspolicyconfigurationdefault-m365collab-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-crosstenantaccesspolicyconfigurationdefault-m365collab-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-crosstenantaccesspolicyconfigurationdefault-m365collab-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-crosstenantaccesspolicyconfigurationdefault-m365collab-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-crosstenantaccesspolicyconfigurationdefault-m365collab-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-crosstenantaccesspolicyconfigurationdefault-m365collab-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the request.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
