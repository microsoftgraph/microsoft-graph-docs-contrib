---
title: "accessPackageAssignment: reprocess"
description: "Reprocess accesspackageassignment objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignment: reprocess

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-root.md), callers can automatically reevaluate and enforce an [accessPackageAssignment](../resources/accesspackageassignment.md) object of a user’s assignments for a specific access package. The **assignmentState** of the access package must be `Delivered` for the administrator to reprocess the user's assignment. Only admins with the Access Package Assignment Manager role, or higher, in Azure AD entitlement management can perform this action.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account) | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | EntitlementManagement.ReadWrite.All |
  
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/entitlementManagement/accessPackageAssignments/{id}/reprocess 
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer \{token\}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code and reevaluates and enforces the user's assignments of the [accessPackageAssignment](../resources/accesspackageassignment.md) object, meaning the status of the access package will be changed to Delivered. If the assignment doesn't exist, this method will return `404 Not Found` or if the **id** isn't valid, this method returns a `400 Bad Request` response code.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "ignored",
  "name": "reprocess_accesspackageassignments"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignments/d82eb508-acc4-43cc-bcf1-7c1c4a2c073b/reprocess
```

### Response

The following is an example of the response.


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted 
```
