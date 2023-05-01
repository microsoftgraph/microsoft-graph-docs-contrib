---
title: "Create multiTenantOrganizationPartnerConfigurationTemplate"
description: "Create a new multiTenantOrganizationPartnerConfigurationTemplate object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create multiTenantOrganizationPartnerConfigurationTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationPartnerConfigurationTemplate not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object.

You can specify the following properties when creating a **multiTenantOrganizationPartnerConfigurationTemplate**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|inboundTrust|[Microsoft.DirectoryServices.crossTenantAccessPolicyInboundTrust](../resources/crosstenantaccesspolicyinboundtrust.md)|**TODO: Add Description** Optional.|
|b2bCollaborationOutbound|[Microsoft.DirectoryServices.crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bCollaborationInbound|[Microsoft.DirectoryServices.crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bDirectConnectOutbound|[Microsoft.DirectoryServices.crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|b2bDirectConnectInbound|[Microsoft.DirectoryServices.crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md)|**TODO: Add Description** Optional.|
|automaticUserConsentSettings|[Microsoft.DirectoryServices.inboundOutboundPolicyConfiguration](../resources/inboundoutboundpolicyconfiguration.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [multiTenantOrganizationPartnerConfigurationTemplate](../resources/multitenantorganizationpartnerconfigurationtemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_multitenantorganizationpartnerconfigurationtemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.multiTenantOrganizationPartnerConfigurationTemplate not found
Content-Type: application/json

{
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

