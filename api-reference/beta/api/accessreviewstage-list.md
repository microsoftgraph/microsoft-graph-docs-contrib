---
title: "List accessReviewStages"
description: "Get a list of the accessReviewStage objects and their properties."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# List accessReviewStages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [accessReviewStage](../resources/accessreviewstage.md) objects for a specific [accessReviewInstance](../resources/accessreviewinstance.md).

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
GET /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages
```

## Optional query parameters
This method supports `$select`, `$filter`, `$orderBy`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
<!-- {
  "blockType": "request",
  "name": "list_accessreviewstage"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/8564a649-4f67-4e09-88e7-55def6530e88/instances/23aa3192-4bb3-4263-aba2-b0a0def949a5/stages
```


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
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/accessReviews/definitions/8564a649-4f67-4e09-88e7-55def6530e88/instances/23aa3192-4bb3-4263-aba2-b0a0def949a5/stages",
  "@odata.count": 2,
  "value": [
    {
        "@odata.type": "#microsoft.graph.accessReviewStage",
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
        "@odata.type": "#microsoft.graph.accessReviewStage",
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

