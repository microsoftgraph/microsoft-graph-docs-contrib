---
title: "Create timeOffRequest"
description: "Create a timeoffrequest object."
ms.localizationpriority: medium
author: "lemikeshifts"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 05/26/2025
---

# Create timeOffRequest

Namespace: microsoft.graph

Create instance of a [timeoffrequest](../resources/timeoffrequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "timeoffrequest_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/timeoffrequest-post-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{teamId}/schedule/timeOffRequests
```

## Optional query parameters

This method doesn't support OData query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-type|application/json. Required.|
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, provide a JSON representation of a new [timeoffrequest](../resources/timeoffrequest.md) object.

## Response

If successful, this method returns a 200 OK response code and the created [timeoffrequest](../resources/timeoffrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_timeoffrequest_1"
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/{teamId}/schedule/timeOffRequests

{
  "senderMessage": "Need a break",
  "timeOffReasonId": "TOR_08c42f26-9b83-492c-bf52-f3609eb083e3",
  "senderUserId": "3f2504e0-4f89-11d3-9a0c-0305e82c3301",
  "startDateTime": "2025-05-26T07:00:00Z",
  "endDateTime": "2025-05-27T07:00:00Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-timeoffrequest-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-timeoffrequest-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-timeoffrequest-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-timeoffrequest-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-timeoffrequest-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-timeoffrequest-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-timeoffrequest-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.timeOffRequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "SREQ_54f7ae3c-dc28-4773-8135-811dd8db2121",
    "createdDateTime": "2025-05-22T20:50:26.796Z",
    "lastModifiedDateTime": "2025-05-22T20:50:26.796Z",
    "assignedTo": "manager",
    "state": "pending",
    "senderDateTime": "2025-05-22T20:50:26.796Z",
    "senderMessage": "Need a break",
    "senderUserId": "3f2504e0-4f89-11d3-9a0c-0305e82c3301",
    "managerActionDateTime": null,
    "managerActionMessage": null,
    "managerUserId": null,
    "startDateTime": "2025-05-26T07:00:00Z",
    "endDateTime": "2025-05-27T07:00:00Z",
    "timeOffReasonId": "TOR_08c42f26-9b83-492c-bf52-f3609eb083e3",
    "lastModifiedBy": {
        "user": {
            "id": "3f2504e0-4f89-11d3-9a0c-0305e82c3301",
            "displayName": "Ava Mitchell",
            "userIdentityType": "aadUser",
        }
    }
}
```
