---
title: "multiTenantOrganizationPartnerConfigurationTemplate: resetToDefaultSettings"
description: "Reset the cross-tenant access policy template with inbound and outbound partner configuration settings for a multitenant organization to the default values."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# multiTenantOrganizationPartnerConfigurationTemplate: resetToDefaultSettings
Namespace: microsoft.graph

Reset the cross-tenant access policy template with inbound and outbound partner configuration settings for a multitenant organization to the default values.

In its reset state, the template has no impact on partner configuration settings, other than that an unconfigured partner configuration is created if needed, for every multitenant organization tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganizationpartnerconfigurationtemplate_resettodefaultsettings" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganizationpartnerconfigurationtemplate-resettodefaultsettings-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-write](../includes/rbac-for-apis/rbac-multitenantorganization-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/resetToDefaultSettings
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

The following example resets the inbound and outbound partner configuration settings of the template to the default values.

### Request

<!-- {
  "blockType": "request",
  "name": "multitenantorganizationpartnerconfigurationtemplatethis.resettodefaultsettings"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/resetToDefaultSettings
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

