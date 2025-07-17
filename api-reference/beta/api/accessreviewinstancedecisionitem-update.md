---
title: "Update accessReviewInstanceDecisionItem"
description: "Update an existing accessReviewInstanceDecisionItem object for which the calling user is the reviewer."
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update accessReviewInstanceDecisionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update access decisions, known as [accessReviewInstanceDecisionItems](../resources/accessreviewinstancedecisionitem.md), for which the user is the reviewer.

>[!NOTE]
>Any updates made to an **accessReviewInstanceDecisionItem** can only be made by calling users who are listed as reviewer for the parent [accessReviewInstance](../resources/accessreviewinstance.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewinstancedecisionitem_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstancedecisionitem-update-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

To update a decision on an accessReviewInstance:
<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/decisions/{accessReviewInstanceDecisionItemId}
```

To update a decision on a stage of an accessReviewInstance that has multiple stages:
<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions/{accessReviewInstanceDecisionItemId}
```

## Request headers
| Name         | Description |
|:-------------|:------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body
The following table shows the properties accepted to update an `accessReviewInstanceDecisionItem`.

| Property     | Type       | Description |
|:-------------|:------------|:------------|
| decision  | String | Access decision for the entity being reviewed. Possible values are: `Approve` `Deny` `NotReviewed` `DontKnow`. Required.  |
|  justification | String | Context of the review provided to admins. Required if justificationRequiredOnApproval is True on the accessReviewScheduleDefinition.  |

## Response
If successful, this method returns a `204 No Content` response code and no response body.


## Examples

### Example 1: Update a decision on an accessReviewInstance

#### Request

The following is an example of a decision to approve access for a user.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewDEfinitionInstanceDecisionsItem"
}-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0/instances/6444d4fd-ab55-4608-8cf9-c6702d172bcc/stages/9458f255-dff2-4d86-9a05-69438f49d7f8/decisions/e6cafba0-cbf0-4748-8868-0810c7f4cc06
Content-Type: application/json

{
  "decision": "Approve",
  "justification": "This person is still on my team",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accessreviewdefinitioninstancedecisionsitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accessreviewdefinitioninstancedecisionsitem-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accessreviewdefinitioninstancedecisionsitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accessreviewdefinitioninstancedecisionsitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accessreviewdefinitioninstancedecisionsitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accessreviewdefinitioninstancedecisionsitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accessreviewdefinitioninstancedecisionsitem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accessreviewdefinitioninstancedecisionsitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 Accepted
```


### Example 2: Update a decision on an stage in a multi-stage access review

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewDEfinitionInstanceDecisionsStage"
}-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0/instances/6444d4fd-ab55-4608-8cf9-c6702d172bcc/stages/9458f255-dff2-4d86-9a05-69438f49d7f8/decisions/e6cafba0-cbf0-4748-8868-0810c7f4cc06
Content-Type: application/json

{
  "decision": "Approve",
  "justification": "This person is still on my team",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accessreviewdefinitioninstancedecisionsstage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accessreviewdefinitioninstancedecisionsstage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accessreviewdefinitioninstancedecisionsstage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accessreviewdefinitioninstancedecisionsstage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accessreviewdefinitioninstancedecisionsstage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accessreviewdefinitioninstancedecisionsstage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accessreviewdefinitioninstancedecisionsstage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accessreviewdefinitioninstancedecisionsstage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
