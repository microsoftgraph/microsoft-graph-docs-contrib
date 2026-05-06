---
title: "accessReviewInstance: batchApplyCustomDataProvidedResourceDecisions"
description: "Set the apply result on a custom data provided resource decision in a batch."
author: "dotnet-enthusiast"
ms.date: 04/01/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# accessReviewInstance: batchApplyCustomDataProvidedResourceDecisions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enables reviewers to set the `applyResult` and `applyDescription` on all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in batches by using **customDataProvidedResourceId**.

**NOTE:** The access review instance must be in an `Applying` state.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accessreviewinstance-batchapplycustomdataprovidedresourcedecisions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstance-batchapplycustomdataprovidedresourcedecisions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/batchApplyCustomDataProvidedResourceDecisions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|x-accessreviews-version|`vNext`. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|applyResult|[accessReviewInstanceDecisionItemApplyResult](../resources/enums.md)|The `applyResult` for the entity being reviewed. The possible values are: `new`, `appliedSuccessfully`, `appliedWithUnknownFailure`, `appliedSuccessfullyButObjectNotFound`, `applyNotSupported`. Required.  |
|applyDescription|String|If supplied, a description for the `applyResult`. Optional. |
|customDataProvidedResourceId|String|The `applyResult` will be set on all **accessReviewInstanceDecisionItems** whose custom data provided resource `id` matches the supplied **customDataProvidedResourceId**. Required. |


## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewinstancethis.batchapplycustomdataprovidedresourcedecisions"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/batchApplyCustomDataProvidedResourceDecisions
Content-Type: application/json

{
  "applyResult": "appliedSuccessfully",
  "applyDescription": "Access was removed from production application: GitHub-app.",
  "customDataProvidedResourceId": "5c728447-be5c-4565-b4d3-cb248b609891"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/accessreviewinstancethisbatchapplycustomdataprovidedresourcedecisions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```

