---
title: "Update crossTenantAccessPolicyConfigurationDefault"
description: "Update the default configuration of a cross-tenant access policy."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update crossTenantAccessPolicyConfigurationDefault

Namespace: microsoft.graph

Update the [default configuration](../resources/crosstenantaccesspolicyconfigurationdefault.md) of a cross-tenant access policy.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-update-permissions.md)]

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
| b2bCollaborationInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B collaboration. |
| b2bCollaborationOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B collaboration. |
| b2bDirectConnectInbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users from other organizations accessing your resources via Microsoft Entra B2B direct connect. |
| b2bDirectConnectOutbound | [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md) | Defines your default configuration for users in your organization going outbound to access resources in another organization via Microsoft Entra B2B direct connect. |
| inboundTrust | [crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md) | Determines the default configuration for trusting other Conditional Access claims from external Microsoft Entra organizations. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Block outbound B2B collaboration for a group of users

#### Request

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

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
