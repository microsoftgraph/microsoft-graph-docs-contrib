---
title: "cloudPC: endGracePeriod"
description: "End the grace period for a specific cloudPC object."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: endGracePeriod

Namespace: microsoft.graph

End the grace period for a specific [cloudPC](../resources/cloudpc.md) object. The grace period is triggered when the Cloud PC license is removed or the provisioning policy is unassigned. It allows users to access Cloud PCs for up to seven days before deprovisioning occurs. Ending the grace period immediately deprovisions the Cloud PC without waiting the seven days.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_endgraceperiod" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-endgraceperiod-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/endGracePeriod
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
  "name": "endgraceperiod_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/cloudPCs/4b18de4b-ab05-4059-8c61-0323a7df4ced/endGracePeriod
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
