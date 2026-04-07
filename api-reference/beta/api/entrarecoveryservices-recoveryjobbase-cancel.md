---
title: "recoveryJobBase: cancel"
description: "Cancel a running recovery or preview job."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# recoveryJobBase: cancel

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a running [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md) object (either a preview or recovery job). The job must be in a non-terminal state (`initialized`, `calculating`, `loadingData`, or `running`). After cancellation, the job status changes to `abandoned`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "entrarecoveryservices-recoveryjobbase-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/entrarecoveryservices-recoveryjobbase-cancel-permissions.md)]

[!INCLUDE [rbac-entrarecoveryservices-apis-write](../includes/rbac-for-apis/rbac-entrarecoveryservices-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/recovery/jobs/{job-id}/cancel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code with a `Location` header pointing to the job resource.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recoveryjobbase_cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/recovery/jobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4/cancel
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recoveryjobbase-cancel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/directory/recovery/jobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4
```
