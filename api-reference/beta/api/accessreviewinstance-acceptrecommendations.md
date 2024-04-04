---
title: "accessReviewInstance: acceptRecommendations"
description: "Allows the acceptance of recommendations on all decisions that haven't been reviewed for an access review instance for which the calling user is a reviewer. "
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.topic: reference
---

# accessReviewInstance: acceptRecommendations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows the acceptance of recommendations on all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects that haven't been reviewed for an [accessReviewInstance](../resources/accessreviewinstance.md) object for which the calling user is a reviewer. Recommendations are generated if **recommendationsEnabled** is `true` on the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object. If there isn't a recommendation on an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object no decision will be recorded.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewinstance_acceptrecommendations" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstance-acceptrecommendations-permissions.md)]

The signed-in user must also be a reviewer on the accessReviewInstance.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/pendingAccessReviewInstances/{instance-id}/acceptRecommendations
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
  "name": "acceptrecommendations_accessReviewInstance"
}-->
```http
POST https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/acceptRecommendations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/acceptrecommendations-accessreviewinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/acceptrecommendations-accessreviewinstance-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/acceptrecommendations-accessreviewinstance-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/acceptrecommendations-accessreviewinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/acceptrecommendations-accessreviewinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/acceptrecommendations-accessreviewinstance-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/acceptrecommendations-accessreviewinstance-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/acceptrecommendations-accessreviewinstance-python-snippets.md)]
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-25 00:00:01 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Accept recommendations accessReviewInstance",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
