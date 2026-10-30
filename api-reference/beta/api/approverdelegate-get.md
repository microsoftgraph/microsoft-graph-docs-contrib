---
title: "Get approverDelegate"
description: "Read the properties of the approverDelegate object that is configured for a user."
ms.localizationpriority: medium
author: "corey284"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 08/20/2026
---

# Get approverDelegate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of the [approverDelegate](../resources/approverdelegate.md) object that is configured for a [user](../resources/user.md). The approver delegate identifies the user or group that can approve or deny Microsoft Entra entitlement management access package assignment requests and access reviews on behalf of the user, and the period during which the delegation is in effect.

Signed-in users can read their own approver delegate. Administrators can read the approver delegate of any user in the tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approverdelegate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/approverdelegate-get-permissions.md)]

[!INCLUDE [rbac-approver-delegate-apis-read](../includes/rbac-for-apis/rbac-approver-delegate-apis-read.md)]

## HTTP request

To read the approver delegate of the signed-in user:

<!-- { "blockType": "ignored" } -->

```http
GET /me/identityGovernance/approverDelegate
```

To read the approver delegate of another user:

<!-- { "blockType": "ignored" } -->

```http
GET /users/{user-id}/identityGovernance/approverDelegate
```

## Optional query parameters

This method doesn't support any [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [approverDelegate](../resources/approverdelegate.md) object in the response body.

If no approver delegate is configured for the user, this method returns a `200 OK` response code and `null` in the response body.

## Examples

### Example 1: Get the approver delegate of the signed-in user

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_approverdelegate_me"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/identityGovernance/approverDelegate
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approverDelegate"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('87ec4b08-df41-4e9c-8f0c-2e6c9e19b0d3')/identityGovernance/approverDelegate",
  "delegate": {
    "@odata.type": "#microsoft.graph.singleUser",
    "id": "d8f4bcd2-4d5a-4a1e-88a5-b0f1c98d2f27",
    "description": "Alex Wilber"
  },
  "schedule": {
    "startDateTime": "2026-08-31T08:21:41.338Z",
    "expiration": {
      "endDateTime": "2026-09-07T08:21:41.339Z",
      "type": "afterDateTime"
    }
  }
}
```

### Example 2: Get the approver delegate of another user

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_approverdelegate_user"
}-->

```http
GET https://graph.microsoft.com/beta/users/87ec4b08-df41-4e9c-8f0c-2e6c9e19b0d3/identityGovernance/approverDelegate
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approverDelegate"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('87ec4b08-df41-4e9c-8f0c-2e6c9e19b0d3')/identityGovernance/approverDelegate",
  "delegate": {
    "@odata.type": "#microsoft.graph.groupMembers",
    "id": "1c5f0b3e-8d4a-4e39-9f2b-6a7c1d3e5f80",
    "description": "Contoso approvers"
  },
  "schedule": {
    "startDateTime": "2026-08-31T08:21:41.338Z",
    "expiration": {
      "type": "noExpiration"
    }
  }
}
```
