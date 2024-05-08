---
title: "Get multiTenantOrganizationPartnerConfigurationTemplate"
description: "Get the cross-tenant access policy template with inbound and outbound partner configuration settings for a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationPartnerConfigurationTemplate
Namespace: microsoft.graph

Get the cross-tenant access policy template with inbound and outbound partner configuration settings for a multitenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganizationpartnerconfigurationtemplate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganizationpartnerconfigurationtemplate-get-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object in the response body.

## Examples

The following example gets the partner configuration settings of the template.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationpartnerconfigurationtemplate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-multitenantorganizationpartnerconfigurationtemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-multitenantorganizationpartnerconfigurationtemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-multitenantorganizationpartnerconfigurationtemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-multitenantorganizationpartnerconfigurationtemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-multitenantorganizationpartnerconfigurationtemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-multitenantorganizationpartnerconfigurationtemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-multitenantorganizationpartnerconfigurationtemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-multitenantorganizationpartnerconfigurationtemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example response shows the unconfigured (or reset) state of the cross-tenant access policy template for partner configuration settings for multitenant organization tenants.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganizationPartnerConfigurationTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/$entity",
    "id": "75b1889b-6f42-4cc5-8e62-e774b8db243c",
    "templateApplicationLevel": "newPartners,existingPartners",
    "inboundTrust": null,
    "b2bCollaborationOutbound": null,
    "b2bCollaborationInbound": null,
    "b2bDirectConnectOutbound": null,
    "b2bDirectConnectInbound": null,
    "automaticUserConsentSettings": {
        "inboundAllowed": null,
        "outboundAllowed": null
    }
}
```

The following example response shows a configured state of the cross-tenant access policy template for partner configuration settings, after inbound trust and automatic redemption have been configured.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/$entity",
    "id": "8d253b1b-1798-434a-8e77-bec3774d1512",
    "templateApplicationLevel": "newPartners,existingPartners",
    "b2bCollaborationOutbound": null,
    "b2bCollaborationInbound": null,
    "b2bDirectConnectOutbound": null,
    "b2bDirectConnectInbound": null,
    "inboundTrust": {
        "isMfaAccepted": true,
        "isCompliantDeviceAccepted": true,
        "isHybridAzureADJoinedDeviceAccepted": true
    },
    "automaticUserConsentSettings": {
        "inboundAllowed": true,
        "outboundAllowed": true
    }
}
```

