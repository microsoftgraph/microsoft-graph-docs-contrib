---
title: "Create openShiftChangeRequest"
description: "Create an instance of an openShiftChangeRequest object."
ms.localizationpriority: medium
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "apiPageType"
---

# Create openShiftChangeRequest

Namespace: microsoft.graph

Create instance of an [openShiftChangeRequest](../resources/openshiftchangerequest.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "openshiftchangerequest_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/openshiftchangerequest-post-permissions.md)]

> **Note**: This API supports admin permissions. Global admins can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teams/{id}/schedule/openShiftChangeRequests
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |
| MS-APP-ACTS-AS  | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. |

## Request body
In the request body, provide a JSON representation of a new [openShiftChangeRequest](../resources/openshiftchangerequest.md) object.

## Response

If successful, this method returns a `200 OK` response code and the created [openShiftChangeRequest](../resources/openshiftchangerequest.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request", "name": "openshiftchangerequest_post"
}-->

```http
POST https://graph.microsoft.com/v1.0/teams/788b75d2-a911-48c0-a5e2-dc98480457e3/schedule/openShiftChangeRequests
Authorization: Bearer {token}
Content-type: application/json

{
  "senderMessage": "Can I take this shift?",
  "openShiftId": "577b75d2-a927-48c0-a5d1-dc984894e7b8"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/openshiftchangerequest-post-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/openshiftchangerequest-post-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/openshiftchangerequest-post-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/openshiftchangerequest-post-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/openshiftchangerequest-post-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/openshiftchangerequest-post-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/openshiftchangerequest-post-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/openshiftchangerequest-post-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.swapShiftsChangeRequest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "SREQ_0b87dd20-d5ed-4764-9c3e-cfc8516def09",
  "openShiftId": "577b75d2-a927-48c0-a5d1-dc984894e7b8",
  "assignedTo": "manager",
  "state": "pending",
  "senderUserId": "3fe0bc21-1398-4fd9-9713-52511b434c1e",
  "senderDateTime": "2019-05-01T10:00:00Z",
  "senderMessage": "Can I take this shift?",
  "managerUserId": null,
  "managerActionDateTime": null,
  "managerActionMessage": null,
  "createdDateTime": "2019-03-14T04:32:51.451Z",
  "lastModifiedDateTime": "2019-03-14T05:32:51.451Z",
  "lastModifiedBy": {
    "application": null,
    "device": null,
    "conversation": null,
    "user": {
      "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
      "displayName": "John Doe"
    }
  }
}

```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create openShiftRequest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

