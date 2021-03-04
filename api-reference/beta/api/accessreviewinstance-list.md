---
title: "List accessReviewInstance"
description: "Retrieve accessReviewInstance objects."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List accessReviewInstance

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [accessReviewInstance](../resources/accessreviewinstance.md) objects for a specific [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md). A list of zero or more **accessReviewInstance** objects are returned, including all of their nested properties. Returned objects do not include associated accessReviewInstanceDecisionItems. To retrieve the decisions on the instance, use [List accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem-list.md).

>[!NOTE]
>If many **accessReviewInstances** are returned, to improve efficiency and avoid timeouts, retrieve the result set in pages, by including both the $top query parameter with a page size of at most 100, and the $skip=0 query parameter in the request. When a result set spans multiple pages, Microsoft Graph returns that page with an @odata.nextLink property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the @odata.nextLink URL in each response, until all the results are returned, as described in paging Microsoft Graph data in your app.
>
>If no query parameters are provided and there are more than 100 results, Microsoft Graph will automatically paginate results at 100 results per page.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All  |
|Application                            | AccessReview.Read.All, AccessReview.ReadWrite.All |

The signed-in user must also be in a directory role that permits them to read an access review. To view just the instances that the signed-in user is assigned the reviewer on, see [List pending access review instances](accessreviewinstance-pendingaccessreviewinstances.md)

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/accessReviews/definitions/{definition-id}/instances
```
## Request headers
None.

## Request body
Do not supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an array of [accessReviewInstance](../resources/accessreviewinstance.md) objects in the response body.

## Examples
### Request
The following example shows a request to retrieve all the access review instances for a definition.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessReviewInstance"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/60860cdd-fb4d-4054-91ba-f75e04f34444/instances?$top=100&$skip=0
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewinstance-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewinstance-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-accessreviewinstance-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewinstance-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
      "id": "6125050e-050e-6125-0e05-25610e052561",
      "accessReviewId": "String",
      "reviewedBy": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "reviewedDateTime": "String (timestamp)",
      "decision": "String",
      "justification": "String",
      "appliedBy": {
        "@odata.type": "microsoft.graph.userIdentity"
      },
      "appliedDateTime": "String (timestamp)",
      "applyResult": "String",
      "recommendation": "String",
      "target": {
        "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
      },
      "principal": {
        "@odata.type": "microsoft.graph.identity"
      },
      "resource": {
        "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
      }
    }
  ]
}
```

## See also

- [List accessReviewScheduleDefinition](accessreviewscheduledefinition-list.md)
- [Get accessReviewInstance](accessreviewinstance-get.md)


<!--
{
  "type": "#page.annotation",
  "description": "List accessReviewInstance",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
