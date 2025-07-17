---
title: "timeOffRequest: approve"
description: Approve a timeoffrequest object."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 09/18/2024
---

# timeOffRequest: approve

Namespace: microsoft.graph

Approve a [timeoffrequest](../resources/timeoffrequest.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timeoffrequest_approve" } -->
[!INCLUDE [permissions-table](../includes/permissions/timeoffrequest-approve-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

[!INCLUDE [approveforuser-application-permission](../includes/approveforuser-application-permission.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timeOffRequests/{timeOffRequestId}/approve
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. Until January 1, 2026, this API supports application permissions only when used in combination with the deprecated `MS-APP-ACTS-AS` header.|

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|message|String|Custom approval message.|

## Response

If successful, this method returns a `200 OK` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "timeoffrequest_approve"
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/timeOffRequests/{timeOffRequestId}/approve
Content-type: application/json

{
  "message": "message-value"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/timeoffrequest-approve-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeOffRequest: approve",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

