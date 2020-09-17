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

Retrieve the [accessReviewInstance](../resources/accessreviewinstance.md) objects for a specific [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md). A list of zero or more **accessReviewInstance** objects are returned, including all of their nested properties. Returned objects do not include associated accessReviewInstanceDecisionItems.

## Permissions
One of the following permissions is required to call this API. Delegated permissions to personal Microsoft accounts are not supported. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All or AccessReview.ReadWrite.All  |
|Application                            | AccessReview.Read.All or AccessReview.ReadWrite.All |

 The signed in user must also be in a directory role that permits them to read an access review.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/accessReviews/definitions/{definitionID}/instances
```
## Request headers
None.

## Request body
Do not supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an array of [accessReviewInstance](../resources/accessreviewinstance.md) objects in the response body.

## Examples
##### Request
The following example shows a request to retrieve all the access review series in a tenant.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_accessReviews"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/60860cdd-fb4d-4054-91ba-f75e04f34444/instances
```

# [C#](#tab/csharp)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]


---



---


##### Response
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReview",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('60860cdd-fb4d-4054-91ba-f75e04f34444')/instances",
    "value": [
        {
            "id": "12490cdb-6a18-4c08-ba2c-44442f0a0138",
            "startDateTime": "2020-09-21T20:03:36Z",
            "endDateTime": "2020-09-23T20:03:36Z",
            "status": "NotStarted",
            "scope": {
                "query": "/groups/b7a04444-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers",
                "queryType": "MicrosoftGraph"
            }
        },
        {
            "id": "64444761-b89f-4d9c-afb9-fcfc8bb9cf45",
            "startDateTime": "2020-09-14T20:03:36.74Z",
            "endDateTime": "2020-09-16T20:03:36.74Z",
            "status": "Completed",
            "scope": {
                "query": "/groups/b7a04444-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers",
                "queryType": "MicrosoftGraph"
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
  "description": "Get accessReviews",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
