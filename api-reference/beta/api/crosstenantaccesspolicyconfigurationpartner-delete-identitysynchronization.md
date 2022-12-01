---
title: "Delete crossTenantIdentitySyncPolicyPartner"
description: "Delete a crossTenantIdentitySyncPolicyPartner object."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete crossTenantIdentitySyncPolicyPartner
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.

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
DELETE /policies/crossTenantIdentitySyncPolicy/partners/{crossTenantIdentitySyncPolicyPartnerId}/$ref
DELETE /policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartnerId}/identitySynchronization/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_crosstenantidentitysyncpolicypartner"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/crossTenantIdentitySyncPolicy/partners/{crossTenantIdentitySyncPolicyPartnerId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

