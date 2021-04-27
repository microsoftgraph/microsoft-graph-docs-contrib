---
title: "List accessReviewScheduleDefinitions"
description: "Get a list of the accessReviewScheduleDefinition objects and their properties."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: apiPageType
---

# List accessReviewScheduleDefinitions
Namespace: microsoft.graph

Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.

>[!NOTE]
>If many **accessReviewScheduleDefinition** objects are returned, to improve efficiency and avoid timeouts, retrieve the result set in pages, by including both the $top query parameter with a page size of at most 100, and the $skip=0 query parameter in the request. When a result set spans multiple pages, Microsoft Graph returns that page with an @odata.nextLink property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the @odata.nextLink URL in each response, until all the results are returned, as described in paging Microsoft Graph data in your app.
>
>If no query parameters are provided and there are more than 100 results, Microsoft Graph will automatically paginate results at 100 results per page.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AccessReviews.Read.All, AccessReviews.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AccessReviews.Read.All, AccessReviews.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/accessReviews/definitions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_accessreviewscheduledefinition"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewScheduleDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions",
    "@odata.count": 1,
    "value": [
        {
            "id": "1b813156-2e43-4204-a2f8-fea0ada33787",
            "displayName": "Review example",
            "createdDateTime": "2021-04-27T17:13:13.3388935Z",
            "lastModifiedDateTime": "2021-04-27T17:15:30.3289853Z",
            "status": "Applying",
            "descriptionForAdmins": "Review of guest users in microsoft 365 groups",
            "descriptionForReviewers": "",
            "createdBy": {
                "id": "4444c56e-fce3-4e2d-b28e-4ac0c7d2fa10",
                "displayName": "Administrator",
                "userPrincipalName": "admin@microsoft.com"
            },
            "scope": {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/v1.0/groups/4444d821-ca3b-45cc-98ee-54c00a04deef/transitiveMembers/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            },
            "instanceEnumerationScope": {
                "@odata.type": "#microsoft.graph.accessReviewQueryScope",
                "query": "/v1.0/groups/4444d821-ca3b-45cc-98ee-54c00a04deef",
                "queryType": "MicrosoftGraph",
                "queryRoot": null
            },
            "reviewers": [
                {
                    "query": "/v1.0/users/4444c56e-fce3-4e2d-b28e-4ac0c7d2fa10",
                    "queryType": "MicrosoftGraph",
                    "queryRoot": null
                }
            ],
            "fallbackReviewers": [],
            "settings": {
                "mailNotificationsEnabled": true,
                "reminderNotificationsEnabled": true,
                "justificationRequiredOnApproval": false,
                "defaultDecisionEnabled": true,
                "defaultDecision": "Deny",
                "instanceDurationInDays": 10,
                "autoApplyDecisionsEnabled": false,
                "recommendationsEnabled": true,
                "recurrence": {
                    "pattern": null,
                    "range": {
                        "type": "numbered",
                        "numberOfOccurrences": 0,
                        "recurrenceTimeZone": null,
                        "startDate": "2021-04-28",
                        "endDate": "2021-05-08"
                    }
                },
                "applyActions": [
                    {
                        "@odata.type": "#microsoft.graph.disableAndDeleteUserApplyAction"
                    }
                ]
            },
            "instances@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('44443156-2e43-4204-a2f8-fea0ada33787')/instances",
            "instances": []
        }
    ]
}
```
