---
title: "List stages"
description: "Retrieve the stages in a multi-stage access review instance."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List stages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the stages in a multi-stage access review instance.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.Read.All, AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.Read.All, AccessReview.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages
```

## Optional query parameters
This method supports the `$select`, `$orderby`, and `$filter` (`eq` only) OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewStage](../resources/accessreviewstage.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessreviewstage"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/16d424f6-0100-4bf1-9ebc-fe009c5e5006/instances/bb14c722-51b8-4962-9bd2-1d96ba773d80/stages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewstage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accessreviewstage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewstage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewstage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accessreviewstage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accessreviewstage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewStage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/accessReviews/definitions('16d424f6-0100-4bf1-9ebc-fe009c5e5006')/instances('bb14c722-51b8-4962-9bd2-1d96ba773d80')/stages",
    "@odata.count": 2,
    "value": [
        {
            "id": "9ac05ca6-396a-469c-8a8b-bcb98fceb2dd",
            "startDateTime": "2018-08-03T21:02:30.667Z",
            "endDateTime": "2018-08-13T21:17:30.513Z",
            "status": "Completed",
            "reviewers": [
                {
                    "query": "/groups/46d30af1-e626-4928-83f5-e9bfa400289e/owners?$filter=microsoft.graph.user/userType eq 'Member' and microsoft.graph.user/country eq
                    'USA'",
                    "type": "MicrosoftGraph"
                }
            ]
        },
        {
            "id": "03266a48-8731-4cfc-8a60-b2fa6648a14c",
            "startDateTime": "2018-08-14T21:02:30.667Z",
            "endDateTime": "2018-09-03T21:17:30.513Z",
            "status": "InProgress",
            "reviewers": [
                {
                    "queryType": "MicrosoftGraph",
                    "queryRoot": "decisions",
                    "query": "./manager",
                }
            ]
        }
    ]
}
```

