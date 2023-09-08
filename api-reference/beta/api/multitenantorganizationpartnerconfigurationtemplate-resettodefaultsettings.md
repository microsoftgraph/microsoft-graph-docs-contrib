---
title: "multiTenantOrganizationPartnerConfigurationTemplate: resetToDefaultSettings"
description: "Reset the cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization to the default values."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# multiTenantOrganizationPartnerConfigurationTemplate: resetToDefaultSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset the cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization to the default values.

In its reset state, the template has no impact on partner configuration settings, other than that an unconfigured partner configuration is created if needed, for every multi-tenant organization tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.CrossTenantAccess|

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
Do not supply a request body for this method.

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
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/resetToDefaultSettings
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

