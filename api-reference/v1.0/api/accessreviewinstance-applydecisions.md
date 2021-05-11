---
title: "accessReviewInstance: applyDecisions"
description: "Apply decisions on an accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: applyDecisions
Namespace: microsoft.graph

Apply review decisions to the resource reviewed in an [accessReviewInstance](../resources/accessreviewinstance.md).

Decisions are applied automatically if the `autoApplyDecisionsEnabled` parameter is `true` in [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) of the review.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/applyDecisions
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
<!-- {
  "blockType": "request",
  "name": "accessreviewinstance_applydecisions"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/applyDecisions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
