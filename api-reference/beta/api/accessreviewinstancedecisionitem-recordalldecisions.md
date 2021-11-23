---
title: "Record decisions on accessReviewInstanceDecisionItem"
description: "Record decisions on accessReviewInstanceDecisionItem."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstanceDecisionItem: recordAllDecisions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.Read.All, AccessReview.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/accessReviews/decisions//filterByCurrentUser(on='reviewer')/recordAllDecisions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|decision|String| The decision to provide |
|justification|String|Justification to provide|
|principalId|String|A specific principalId to approve/deny|
|resourceId|String|A specific resourceId to approve/deny|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "accessreviewinstancedecisionitemthis.recordalldecisions"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/decisions/recordAllDecisions
Content-Type: application/json
Content-length: 113

{
  "decision": "String",
  "justification": "String",
  "principalId": "String",
  "resourceId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

