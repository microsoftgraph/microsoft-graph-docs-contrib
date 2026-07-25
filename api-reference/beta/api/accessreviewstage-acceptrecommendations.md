---
title: "accessReviewStage: acceptRecommendations"
description: "Accept the recommendations on all decision items that haven't been reviewed within a single stage of a multi-stage access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/10/2026
---

# accessReviewStage: acceptRecommendations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Accept the recommendations on all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects that haven't been reviewed within a single [accessReviewStage](../resources/accessreviewstage.md) of a multi-stage [accessReviewInstance](../resources/accessreviewinstance.md). Recommendations are generated if **recommendationsEnabled** is `true` on the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object. If there's no recommendation on an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object, no decision is recorded.

This action accepts recommendations for the decisions in a specific stage only, unlike [accessReviewInstance: acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md), which operates across the entire instance.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewstage_acceptrecommendations" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewstage-acceptrecommendations-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/acceptRecommendations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "accessreviewstage_acceptrecommendations"
}
-->
```http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/2b83cc42-09db-46f6-8c6e-16fec466a82d/instances/61a617dd-238f-4037-8fa5-d800e515f5bc/stages/5d431f4b-56f2-4a50-938b-fb1e4e2c91b9/acceptRecommendations
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
