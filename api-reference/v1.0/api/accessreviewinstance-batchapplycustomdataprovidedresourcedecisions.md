---
title: "accessReviewInstance: batchApplyCustomDataProvidedResourceDecisions"
description: "Set the apply result on a custom data provided resource decision in a batch."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 08/31/2026
---

# accessReviewInstance: batchApplyCustomDataProvidedResourceDecisions

Namespace: microsoft.graph

Enables reviewers to set the **applyResult** and **applyDescription** on all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in a specific [accessReviewInstance](../resources/accessreviewinstance.md) in batches by using **customDataProvidedResourceId**.

**NOTE:** The access review instance must be in an `Applying` state.

This action is part of the unified access reviews surface and is available only through the `/identityGovernance/accessReviews/unified` route. For more information, see [unifiedRoot](../resources/unifiedroot.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accessreviewinstance_batchapplycustomdataprovidedresourcedecisions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstance-batchapplycustomdataprovidedresourcedecisions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/accessReviews/unified/instances/{accessReviewInstanceId}/batchApplyCustomDataProvidedResourceDecisions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|applyResult|[accessReviewInstanceDecisionItemApplyResult](../resources/enums.md#accessreviewinstancedecisionitemapplyresult-values)|The `applyResult` for the entity being reviewed. The possible values are: `new`, `appliedSuccessfully`, `appliedWithUnknownFailure`, `appliedSuccessfullyButObjectNotFound`, `applyNotSupported`, `unknownFutureValue`. Required.|
|applyDescription|String|If supplied, a description for the `applyResult`. Optional.|
|customDataProvidedResourceId|String|The `applyResult` is set on all **accessReviewInstanceDecisionItem** objects whose custom data provided resource `id` matches the supplied **customDataProvidedResourceId**. Required.|

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "accessreviewinstancethis.batchapplycustomdataprovidedresourcedecisions"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/unified/instances/{accessReviewInstanceId}/batchApplyCustomDataProvidedResourceDecisions
Content-Type: application/json

{
  "applyResult": "appliedSuccessfully",
  "applyDescription": "Access was removed from production application: GitHub-app.",
  "customDataProvidedResourceId": "5c728447-be5c-4565-b4d3-cb248b609891"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "accessreviewinstancethis.batchapplycustomdataprovidedresourcedecisions",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
```
