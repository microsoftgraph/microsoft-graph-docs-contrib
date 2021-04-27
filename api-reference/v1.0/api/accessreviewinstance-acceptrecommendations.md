---
title: "accessReviewInstance: acceptRecommendations"
description: "Allows the acceptance of recommendations on all not-reviewed decisions on an access review instance that the calling user is a reviewer for."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstance: acceptRecommendations

Namespace: microsoft.graph

Allows the acceptance of recommendations on all not-reviewed [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects on an [accessReviewInstance](../resources/accessreviewinstance.md) object that the calling user is a reviewer for.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReviews.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/acceptRecommendations
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
  "name": "accessreviewinstance_acceptrecommendations"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/acceptRecommendations
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
