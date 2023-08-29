---
title: "Create identitySynchronization"
description: "Create a cross-tenant user synchronization policy for a partner-specific configuration."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create identitySynchronization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a cross-tenant user synchronization policy for a partner-specific configuration.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.CrossTenantAccess|

The signed-in user must also be assigned the following minimum [directory role](/azure/active-directory/roles/permissions-reference):

* Security Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /policies/crossTenantAccessPolicy/partners/{id}/identitySynchronization
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.

You can specify the following properties when you create a **crossTenantIdentitySyncPolicyPartner**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Use the name of the partner Azure Active Directory tenant to easily identify the policy. Optional.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Determines whether users are synchronized from the partner tenant.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_crosstenantidentitysyncpolicypartner_from_"
}
-->
``` http
PUT https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/90e29127-71ad-49c7-9ce8-db3f41ea06f1/identitySynchronization
Content-Type: application/json

{
  "displayName": "Fabrikam",
  "userSyncInbound": {
    "isSyncAllowed": true
  }
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-crosstenantidentitysyncpolicypartner-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-crosstenantidentitysyncpolicypartner-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
