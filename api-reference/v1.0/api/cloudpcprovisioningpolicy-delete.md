---
title: "Delete cloudPcProvisioningPolicy"
description: "Delete a cloudPcProvisioningPolicy object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Delete cloudPcProvisioningPolicy

Namespace: microsoft.graph

Delete a [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) object. You can’t delete a policy that’s in use.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcprovisioningpolicy_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcprovisioningpolicy-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /deviceManagement/virtualEndpoint/provisioningPolicies/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_provisioningpolicies_from_virtualendpoint"
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/provisioningPolicies/1d164206-bf41-4fd2-8424-a3192d39ffff
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
