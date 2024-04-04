---
title: "accessPackageAssignmentRequest: reprocess"
description: "Reprocess accessPackageAssignmentRequest objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.topic: reference
---

# accessPackageAssignmentRequest: reprocess

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), callers can automatically retry a user's request for access to an access package. It's performed on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object whose **requestState** is in a `DeliveryFailed` or `PartiallyDelivered` state.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignmentrequest_reprocess" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignmentrequest-reprocess-permissions.md)]
  
## HTTP request

> [!NOTE]
> The `/accessPackageAssignmentRequests` path will be retired soon. Use the `/assignmentRequests` path instead.

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/entitlementManagement/assignmentRequests/{id}/reprocess
POST /identityGovernance/entitlementManagement/accessPackageAssignmentRequests/{id}/reprocess
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a  `202 Accepted` response code and retries the request. If the [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object doesn't exist, this method returns `404 Not Found` or if the **id** isn't valid, this method returns a `400 Bad Request` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "reprocess_accesspackageassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/d82eb508-acc4-43cc-bcf1-7c1c4a2c073b/reprocess
```

### Response

The following example shows the response.


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted  
```
