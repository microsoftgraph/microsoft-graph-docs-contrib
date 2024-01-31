---
title: "accessPackageAssignmentRequest: reprocess"
description: "Reprocess accessPackageAssignmentRequest objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignmentRequest: reprocess

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), callers can automatically retry a user's request for access to an access package. It's performed on an [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object whose **requestState** is in a `DeliveryFailed` or `PartiallyDelivered` state. 

You can only reprocess a request within 14 days from the time the original request was completed. For requests completed more than 14 days, you will need to ask the users to cancel the request(s) and make a new request in the [MyAccess](https://myaccess.microsoft.com/) portal.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignmentrequest_reprocess" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignmentrequest-reprocess-permissions.md)]
  
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/entitlementManagement/assignmentRequests/{id}/reprocess
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a  `202 Accepted` response code and retries the request. If the [accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) object doesn't exist, this method will return `404 Not Found` or if the **id** isn't valid, this method returns a `400 Bad Request` response code.

## Examples

### Request

Here's an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reprocess_accesspackageassignmentrequest"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignmentRequests/d82eb508-acc4-43cc-bcf1-7c1c4a2c073b/reprocess
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reprocess-accesspackageassignmentrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/reprocess-accesspackageassignmentrequest-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reprocess-accesspackageassignmentrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reprocess-accesspackageassignmentrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reprocess-accesspackageassignmentrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reprocess-accesspackageassignmentrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reprocess-accesspackageassignmentrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reprocess-accesspackageassignmentrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted  
```
