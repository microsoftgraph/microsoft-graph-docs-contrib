---
title: "Accept recommendations for an accessReviewInstance"
description: "In the Azure AD access reviews feature, allow calling user to accept recommendations on all NotReviewed decisions on an `accessReviewInstance` that they are the reviewer on. "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Accept recommendations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](../resources/accessreviewsv2-root.md) feature, the calling user can accept recommendations for every NotReviewed [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) on a specific [accessReviewInstance](../resources/accessreviewinstance.md) that the calling user is a reviewer on.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Application                            | AccessReview.ReadWrite.All |

The signed in user must also be a reviewer on the `accessReviewInstance`.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/pendingAccessReviewInstances/{instanceID}/acceptRecommendations()
```
## Request headers
None.

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sendReminder_accessReview"
}-->
```http
POST https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/acceptRecommendations()
```
# [C#](#tab/csharp)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true
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


