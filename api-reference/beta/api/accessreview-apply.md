---
title: "Apply accessReview (deprecated)"
description: "In the Microsoft Entra access reviews feature, apply the decisions of a completed accessReview.  The target object can be either a one-time access review, or an instance of a recurring access review.  "
ms.localizationpriority: medium
author: "shubhamguptacal"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Apply accessReview (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](../resources/accessreviews-root.md) feature, apply the decisions of a completed [accessReview](../resources/accessreview.md).  The target object can be either a one-time access review, or an instance of a recurring access review.  


After an access review is finished, either because it reached the end date or an administrator stopped it manually, and auto-apply wasn't configured for the review, you can call Apply to apply the changes. Until apply occurs, the decisions to remove access rights do not appear on the source resource, the users for instance retain their group memberships. By calling apply, the outcome of the review is implemented by updating the group or application. If a user's access was denied in the review, when an administrator calls this API, Microsoft Entra ID removes their membership or application assignment. 

After an access review is finished, and auto-apply was configured, then the status of the review will change from Completed through intermediate states and finally will change to state Applied. You should expect to see denied users, if any, being removed from the resource group membership or app assignment in a few minutes.

A configured auto applying review, or selecting Apply doesn't have an effect on a group that originates in an on-premises directory or a dynamic group. If you want to change a group that originates on-premises, download the results and apply those changes to the representation of the group in that directory.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreview_apply" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreview-apply-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /accessReviews/{reviewId}/applyDecisions
```
## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
Don't supply a request body for this method.


## Response
If successful, this method returns a `204, No Content` response code. It doesn't return anything in the response body.

## Example
### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "apply_accessReview"
}-->
```http
POST https://graph.microsoft.com/beta/accessReviews/2975E9B5-44CE-4E71-93D3-30F03B5AA992/applyDecisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/apply-accessreview-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/apply-accessreview-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/apply-accessreview-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/apply-accessreview-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/apply-accessreview-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/apply-accessreview-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/apply-accessreview-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/apply-accessreview-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
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
  "description": "Apply accessReview",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content

- [How to complete an access review](/azure/active-directory/active-directory-azure-ad-controls-complete-access-review)
