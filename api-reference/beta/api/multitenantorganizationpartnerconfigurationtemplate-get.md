---
title: "Get multiTenantOrganizationPartnerConfigurationTemplate"
description: "Read the properties and relationships of a multiTenantOrganizationPartnerConfigurationTemplate object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationPartnerConfigurationTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationpartnerconfigurationtemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationPartnerConfiguration
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.multiTenantOrganizationPartnerConfigurationTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.multiTenantOrganizationPartnerConfigurationTemplate",
    "inboundTrust": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyInboundTrust"
    },
    "b2bCollaborationOutbound": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
    },
    "b2bCollaborationInbound": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
    },
    "b2bDirectConnectOutbound": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
    },
    "b2bDirectConnectInbound": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
    },
    "automaticUserConsentSettings": {
      "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
    }
  }
}
```

