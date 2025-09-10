---
title: "Get policyDeletableItem"
description: "Read the properties and relationships of a policyDeletableItem object."
author: "ashyasingh"
ms.date: 06/18/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get policyDeletableItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [policyDeletableItem](../resources/policydeletableitem.md) object, which might be one of the following deleted policy types:
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-get-permissions",
  "requestUrls": ["GET /policies/deletedItems/crossTenantPartners/{id}", "GET /policies/deletedItems/crossTenantSyncPolicyPartners/{id}"],
  "mergePermissions": true 
  
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-get-permissions.md)]

## HTTP request

Get a deleted **crossTenantAccessPolicyConfigurationPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/deletedItems/crossTenantPartners/{id}
```

Get a deleted **crossTenantIdentitySyncPolicyPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/deletedItems/crossTenantSyncPolicyPartners/{id}
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [policyDeletableItem](../resources/policydeletableitem.md) object in the response body. The `@odata.context` property in the request body indicates which type of policy is returned.

## Examples

### Example 1: Retrieve a deleted crossTenantAccessPolicyConfigurationPartner object

#### Request

The following example shows a request for a crossTenantAccessPolicyConfigurationPartner.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_policydeletableitem_crossTenantAccessPolicyConfigurationPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/01d0e717-bc90-46ba-94a9-71b4a811fddb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantPartners/$entity",
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


### Example 2: Retrieve a deleted crossTenantIdentitySyncPolicyPartner object

#### Request

The following example shows a request for a crossTenantIdentitySyncPolicyPartner.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
GET https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners/01d0e717-bc90-46ba-94a9-71b4a811fddb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-policydeletableitem-crosstenantidentitysyncpolicypartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-policydeletableitem-crosstenantidentitysyncpolicypartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-policydeletableitem-crosstenantidentitysyncpolicypartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-policydeletableitem-crosstenantidentitysyncpolicypartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-policydeletableitem-crosstenantidentitysyncpolicypartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-policydeletableitem-crosstenantidentitysyncpolicypartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.policyDeletableItem"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft-ppe.com/testppebetadeleteapis/$metadata#policies/deletedItems/crossTenantSyncPolicyPartners/$entity",
  "tenantId": "01d0e717-bc90-46ba-94a9-71b4a811fddb",
  "displayName": null,
  "deletedDateTime": "2025-06-18T23:11:01Z",
  "externalCloudAuthorizedApplicationId": null,
  "userSyncInbound": null
}
```
