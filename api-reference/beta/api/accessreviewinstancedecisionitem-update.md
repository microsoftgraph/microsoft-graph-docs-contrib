---
title: "Update accessReviewInstanceDecisionItem"
description: "Update an existing accessReviewInstanceDecisionItem object that calling user is the reviewer of."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# Update accessReviewInstanceDecisionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update access decisions, known as [accessReviewInstanceDecisionItems](../resources/accessreviewinstancedecisionitem.md), for which the user is the reviewer.

>[!NOTE]
>Any updates made to an **accessReviewInstanceDecisionItem** can only be made by calling users who are listed as reviewer for the parent [accessReviewInstance](../resources/accessreviewinstance.md).

## Permissions
One of the following permissions is required to call this API. Delegated permissions to personal Microsoft accounts are not supported. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|

## HTTP request
<!-- { "blockType": "ignored" } -->
### Example 1: update a decision on an accessReviewInstance.
```http
PATCH /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions/{accessReviewInstanceDecisionItemId}
```
## Request headers
| Name         | Description |
|:-------------|:------------|
|Authorization|Bearer {token}. Required.|
| Content-type | application/json. Required. |

## Request body
The following table shows the properties accepted to update an `accessReviewInstanceDecisionItem`.

| Property     | Type       | Description |
|:-------------|:------------|:------------|
| decision  | String | Access decision for the entity being reviewed. Possible values are: `Approve` `Deny` `NotReviewed` `DontKnow`. Required.  |
|  justification | String | Context of the review provided to admins. Required if justificationRequiredOnApproval is True on the accessReviewScheduleDefinition.  |

## Response
If successful, this method returns a `204, NoContent` response code and no response body.

### Request
## Examples

This is an example of approving access for a user represented by an `accessReviewInstanceDecisionItem`.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewInstanceDecisionItem"
}-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0/instances/6444d4fd-ab55-4608-8cf9-c6702d172bcc/decisions/12348410-67f3-4d4c-b946-6989e050be19
Content-Type: application/json

{
  "decision": "Approve",
  "justification": "This person is still on my team",
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accessreviewinstancedecisionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accessreviewinstancedecisionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-accessreviewinstancedecisionitem-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accessreviewinstancedecisionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accessreviewinstancedecisionitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 Accepted
```

<!-- { "blockType": "ignored" } -->
### Example 2: update a decision on an accessReviewStage of a multi-stage access review.
```http
PATCH /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions/{accessReviewInstanceDecisionItemId}
```
## Request headers
| Name         | Description |
|:-------------|:------------|
|Authorization|Bearer {token}. Required.|
| Content-type | application/json. Required. |

## Request body
The following table shows the properties accepted to update an `accessReviewInstanceDecisionItem`.

| Property     | Type       | Description |
|:-------------|:------------|:------------|
| decision  | String | Access decision for the entity being reviewed. Possible values are: `Approve` `Deny` `NotReviewed` `DontKnow`. Required.  |
|  justification | String | Context of the review provided to admins. Required if justificationRequiredOnApproval is True on the accessReviewScheduleDefinition.  |

## Response
If successful, this method returns a `204, NoContent` response code and no response body.

### Request
## Examples

This is an example of approving access for a user represented by an `accessReviewInstanceDecisionItem`.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewInstanceDecisionItem"
}-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0/instances/6444d4fd-ab55-4608-8cf9-c6702d172bcc/stages/9458f255-dff2-4d86-9a05-69438f49d7f8/decisions/e6cafba0-cbf0-4748-8868-0810c7f4cc06
Content-Type: application/json

{
  "decision": "Approve",
  "justification": "This person is still on my team",
}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 Accepted
```

<!--
{
  "type": "#page.annotation",
  "description": "Update accessReviewInstanceDecisionItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
