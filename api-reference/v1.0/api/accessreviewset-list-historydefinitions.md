---
title: "List historyDefinitions"
description: "Get a list of the accessReviewHistoryDefinition objects."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List historyDefinitions

Namespace: microsoft.graph

Retrieve the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects created in the last 30 days, including all nested properties.

>[!NOTE]
>The default page size for this API is 100 **accessReviewHistoryDefinitions** objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).
>
>If no query parameters are provided and there are more than 100 results, Microsoft Graph will automatically paginate results at 100 results per page.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReview.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReview.ReadWrite.All|

If the signed-in user is not a Global Admin directory role member or a Global Reader directory role member, only the definitions that the signed-in user created will be returned.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identityGovernance/accessReviews/historyDefinitions
```

## Optional query parameters

This method supports the `$top`, `$filter`, `$expand`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). Including `?$expand=instances` will return the [accessReviewHistoryDefinitions](../resources/accessreviewhistorydefinition.md) objects along with their associated instances.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessreviewhistorydefinition"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/historyDefinitions
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition",
  "isCollection": "true"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
            "id": "67e3de15-d263-45a9-8f4f-71271b495db7",
            "displayName": "Last year's ELM assignment reviews - one time",
            "reviewHistoryPeriodStartDateTime": "2021-01-01T00:00:00Z",
            "reviewHistoryPeriodEndDateTime": "2021-04-05T00:00:00Z",
            "decisions": [
                "approve",
                "deny",
                "dontKnow",
                "notReviewed",
                "notNotified"
            ],
            "status": "done",
            "createdDateTime": "2021-04-14T00:22:48.9392594Z",
            "createdBy": {
                "id": "957f1027-c0ee-460d-9269-b8444459e0fe",
                "displayName": "MOD Administrator",
                "userPrincipalName": "admin@contoso.com"
            },
            "scopes": [
                {
                    "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                    "queryType": "MicrosoftGraph",
                    "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
                    "queryRoot": null
                }
            ]
        }
    ]
}
```
