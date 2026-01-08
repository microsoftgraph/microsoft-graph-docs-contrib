---
title: "ediscoveryHoldPolicy: retryPolicy"
description: "Trigger a retry of an eDiscovery hold policy."
author: "Kylefk"
ms.date: 11/20/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# ediscoveryHoldPolicy: retryPolicy

Namespace: microsoft.graph.security

Trigger a retry of an [eDiscovery hold policy](../resources/security-ediscoveryholdpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_retrypolicy" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-retrypolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/retryPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "ediscoveryholdpolicythis.retrypolicy"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/c2940e86-57c0-4b6d-acce-9944bdfdf58a/legalHolds/21292627-70a5-47e1-aef1-5f70c6d0bb42/retryPolicy
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
