---
title: "accessReviewStage: batchRecordDecisions"
description: "Record decisions in bulk for all accessReviewInstanceDecisionItem objects within a single stage of a multi-stage access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/10/2026
---

# accessReviewStage: batchRecordDecisions

Namespace: microsoft.graph

Record decisions in bulk for all [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects within a single [accessReviewStage](../resources/accessreviewstage.md) of a multi-stage [accessReviewInstance](../resources/accessreviewinstance.md), by using **principalId**, **resourceId**, or neither.

This action records decisions for a specific stage only, unlike [accessReviewInstance: batchRecordDecisions](../api/accessreviewinstance-batchrecorddecisions.md), which operates across the entire instance.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewstage_batchrecorddecisions" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewstage-batchrecorddecisions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/batchRecordDecisions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|decision|String|Access decision for the entity being reviewed. The possible values are: `Approve`, `Deny`, `NotReviewed`, `DontKnow`. Required.|
|justification|String|Context of the review provided to admins. Required if **justificationRequiredOnApproval** is `true` on the **accessReviewScheduleDefinition**.|
|principalId|String|If supplied, all the **accessReviewInstanceDecisionItem** objects with matching **principalId** in the stage are reviewed in this batch. If not supplied, all **principalId** values are reviewed.|
|resourceId|String|If supplied, all the **accessReviewInstanceDecisionItem** objects with matching **resourceId** in the stage are reviewed in this batch. If not supplied, all **resourceId** values are reviewed.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example: Record decisions in bulk for a stage

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewstage_batchrecorddecisions"
}
-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2b83cc42-09db-46f6-8c6e-16fec466a82d/instances/61a617dd-238f-4037-8fa5-d800e515f5bc/stages/5d431f4b-56f2-4a50-938b-fb1e4e2c91b9/batchRecordDecisions
Content-Type: application/json

{
  "decision": "Approve",
  "justification": "All principals with access need continued access to the resource as they are on the same team.",
  "resourceId": "a5c51e59-3fcd-4a37-87a1-835c0c21488a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewstage-batchrecorddecisions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accessreviewstage-batchrecorddecisions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewstage-batchrecorddecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewstage-batchrecorddecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accessreviewstage-batchrecorddecisions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/accessreviewstage-batchrecorddecisions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
