---
title: "accessReviewInstance: sendReminder"
description: "Sends a reminder to the reviewers of a currently active accessReviewInstance."
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# accessReviewInstance: sendReminder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send a reminder to the reviewers of a currently active [accessReviewInstance](../resources/accessreviewinstance.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewinstance_sendreminder" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstance-sendreminder-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /identityGovernance/accessReviews/definitions/{definitionId}/instances/{instanceId}/sendReminder
```
## Request headers
None.

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `204, No Content` response code. It doesn't return anything in the response body.

## Examples
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sendReminder_accessReview_2"
}-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/04e5c3b2-9db2-40d3-a204-128f4956ae8e/instances/70463350-742e-4909-bfa5-bc23447bd002/sendReminder
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sendreminder-accessreview-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/sendreminder-accessreview-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sendreminder-accessreview-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sendreminder-accessreview-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sendreminder-accessreview-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sendreminder-accessreview-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sendreminder-accessreview-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sendreminder-accessreview-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "SendReminder accessReviewInstance",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
