---
title: "crossTenantAccessPolicyConfigurationPartner: restore"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 06/18/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# crossTenantAccessPolicyConfigurationPartner: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantaccesspolicyconfigurationpartner-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationpartner-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartnerId}/restore
POST /policies/deletedItems/crossTenantPartners/{crossTenantAccessPolicyConfigurationPartnerId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "crosstenantaccesspolicyconfigurationpartnerthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartnerId}/restore
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
    "deletedDateTime": "String (timestamp)",
    "tenantId": "String (identifier)",
    "isServiceProvider": "Boolean",
    "isInMultiTenantOrganization": "Boolean",
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
    "tenantRestrictions": {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
    },
    "automaticUserConsentSettings": {
      "@odata.type": "microsoft.graph.inboundOutboundPolicyConfiguration"
    }
  }
}
```
