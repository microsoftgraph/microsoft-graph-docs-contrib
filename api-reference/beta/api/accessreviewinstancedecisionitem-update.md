---
title: "Patch accessReviewInstanceDecisionItem"
description: "In the Azure AD access reviews feature, update an existing accessReviewInstanceDecisionItem object that calling user is the reviewer of."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update accessReviewInstanceDecisionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>Any updates made to an **accessReviewInstanceDecisionItem** can only be made by calling users who are listed as reviewer for the parent [accessReviewInstance](../resources/accessreviewinstance.md).

In the Azure AD [access reviews](../resources/accessreviewsv2-root.md) feature, reviewers can use this API to update access decisions, known as [accessReviewInstanceDecisionItems](../resources/accessreviewinstancedecisionitem.md), for which they are the reviewer.


## Permissions
One of the following permissions is required to call this API. Delegated permissions to personal Microsoft accounts are not supported. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.ReadWrite.All |
|Application                            | AccessReview.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/pendingAccessReviewInstances/{instanceID}/decisions/{decisionID}
```
## Request headers
| Name         | Description |
|:-------------|:------------|
| Content-type | application/json. Required. |

## Request body
The following table shows the properties accepted to update an `accessReviewInstanceDecisionItem`.

| Property     | Type       | Description |
|:-------------|:------------|:------------|
| `decision`             |`String`                      | Access decision for the entity being reviewed. Possible values are: `Approve` `Deny` `NotReviewed` `DontKnow`. |
| `justification`    |`String`                       | Context of the review provided to admins. |

## Response
If successful, this method returns a `204, NoContent` response code and no response body.

## Example

This is an example of approving access for a user represented by an `accessReviewInstanceDecisionItem`.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accessReviewInstanceDecisionItem"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/pendingAccessReviewInstances/70a68410-67f3-4d4c-b946-6989e050be19/decisions/654b34e7-b48f-4772-a2d4-08f1d0dd014c

{
    "decision":"Approve",
    "justification":"I trust this person"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReview"
} -->
```http
HTTP/1.1 204 Accepted
```

<!--
{s
  "type": "#page.annotation",
  "description": "Update accessReview",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
