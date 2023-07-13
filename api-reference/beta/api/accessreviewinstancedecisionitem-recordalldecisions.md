---
title: "accessReviewInstanceDecisionItem: recordAllDecisions"
description: "Record the decisions for an accessReviewInstanceDecisionItem object."
ms.localizationpriority: medium
author: "jyothig123"
ms.prod: "governance"
doc_type: apiPageType
---

# accessReviewInstanceDecisionItem: recordAllDecisions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

As a reviewer of an access review, record a decision for an [accessReviewInstanceDecisionItem](../resources/accessReviewInstanceDecisionItem.md) that is assigned to you and that matches the principal or resource IDs specified. If no IDs are specified, the decisions will apply to every **accessReviewInstanceDecisionItem** for which you are the reviewer.

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
POST /identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')/recordAllDecisions
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
|decision|String| The decision to provide. The possible values are `Approve`, `Deny`, `DontKnow`. |
|justification|String|Justification to provide for the decision.|
|principalId|String|If provided, all decision items matching the principalId will have this decision recorded.|
|resourceId|String|If provided, all decision items matching the resourceId will have this decision recorded.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "accessreviewinstancedecisionitem-recordalldecisions"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')/recordAllDecisions
Content-Type: application/json

{
  "decision": "Deny",
  "justification": "Alice switched teams and no longer works with this group",
  "principalId": "2043848d-e422-473c-8607-88a3319ff491",
  "resourceId": "733ef921-89e1-4d7e-aeff-83612223c37e"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/accessreviewinstancedecisionitem-recordalldecisions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/accessreviewinstancedecisionitem-recordalldecisions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

