---
title: "Get multiTenantOrganizationPartnerConfigurationTemplate"
description: "Get the cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationPartnerConfigurationTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the cross-tenant access policy template with inbound and outbound partner configuration settings for a multi-tenant organization.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.CrossTenantAccess|

The signed-in user must also be assigned one of the following minimum [directory roles](/azure/active-directory/roles/permissions-reference):

* Security Reader
* Global Reader

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
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object in the response body.

## Examples

The following example gets the partner configuration settings of the template.

### Request

<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationpartnerconfigurationtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```


### Response

The following example response shows the default partner configuration settings before they have been configured or after they have been reset.

In its default state, when the template is used to generate a previously non-existent partner policy, the newly generated partner policy is in an unconfigured state.

Similarly, in its default state, when the template is used to amend a previously existing partner policy, the previously existing partner policy remains unchanged.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/$entity",
    "id": "75b1889b-6f42-4cc5-8e62-e774b8db243c",
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

The following example response shows the partner configuration settings for inbound trust and automatic redemption after they have been configured.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration/$entity",
    "id": "8d253b1b-1798-434a-8e77-bec3774d1512",
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

