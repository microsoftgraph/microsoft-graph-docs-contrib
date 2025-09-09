---
title: "Restore crossTenantAccessPolicyConfigurationPartner"
description: "Restore a deleted crossTenantAccessPolicyConfigurationPartner object."
author: "ashyasingh"
ms.date: 06/18/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Restore crossTenantAccessPolicyConfigurationPartner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a deleted [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) object. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantaccesspolicyconfigurationpartner-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationpartner-restore-permissions.md)]

[!INCLUDE [rbac-xtap-apis-write](../includes/rbac-for-apis/rbac-xtap-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "crosstenantaccesspolicyconfigurationpartnerthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/01d0e717-bc90-46ba-94a9-71b4a811fddb/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/crosstenantaccesspolicyconfigurationpartnerthisrestore-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/crosstenantaccesspolicyconfigurationpartnerthisrestore-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/crosstenantaccesspolicyconfigurationpartnerthisrestore-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/crosstenantaccesspolicyconfigurationpartnerthisrestore-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/crosstenantaccesspolicyconfigurationpartnerthisrestore-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/crosstenantaccesspolicyconfigurationpartnerthisrestore-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyConfigurationPartner"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#microsoft.graph.crossTenantAccessPolicyConfigurationPartner",
  "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
  "deletedDateTime": "2025-06-18T22:58:04Z",
  "displayName": null,
  "isServiceProvider": null,
  "isInMultiTenantOrganization": false,
  "blockServiceProviderOutboundAccess": null,
  "inboundTrust": null,
  "b2bCollaborationOutbound": null,
  "b2bCollaborationInbound": null,
  "b2bDirectConnectOutbound": null,
  "b2bDirectConnectInbound": null,
  "tenantRestrictions": null,
  "invitationRedemptionIdentityProviderConfiguration": null,
  "crossCloudMeetingConfiguration": {
    "inboundAllowed": null,
    "outboundAllowed": null
  },
  "automaticUserConsentSettings": {
    "inboundAllowed": null,
    "outboundAllowed": null
  },
  "protectedContentSharing": {
    "inboundAllowed": null,
    "outboundAllowed": null
  }
}
```
