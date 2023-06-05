---
title: "accessReviewStage: stop"
description: "Stop an access review stage that's in progress."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewStage: stop
Namespace: microsoft.graph

Stop an [access review stage](../resources/accessReviewStage.md) that is `inProgress`. After the access review stage stops, the stage **status** will be `Completed` and the reviewers can no longer give input. If there are subsequent stages that depend on the completed stage, the next stage will be created. 

The [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects will always reflect the last decisions recorded across all stages at that given time, regardless of the status of the stages.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/stop
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewstage_stop"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2b83cc42-09db-46f6-8c6e-16fec466a82d/instances/61a617dd-238f-4037-8fa5-d800e515f5bc/stages/5d431f4b-56f2-4a50-938b-fb1e4e2c91b9/stop
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/accessreviewstage-stop-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/accessreviewstage-stop-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewstage-stop-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewstage-stop-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/accessreviewstage-stop-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/accessreviewstage-stop-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

