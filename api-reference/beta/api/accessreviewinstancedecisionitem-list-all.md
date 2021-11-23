---
title: "List all accessReviewInstanceDecisionItem"
description: "Retrieve accessReviewInstanceDecisionItem objects."
ms.localizationpriority: medium
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: apiPageType
---

# List all accessReviewInstanceDecisionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects for a specific [accessReviewInstance](../resources/accessreviewinstance.md). A list of zero or more accessReviewInstanceDecisionItem objects are returned, including all of their nested properties.

>[!NOTE]
>The default page size for this API is 100 accessReviewInstanceDecisionItem objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | AccessReview.Read.All, AccessReview.ReadWrite.All  |
|Delegated (personal Microsoft account)|Not supported.|
|Application                            | AccessReview.Read.All, AccessReview.ReadWrite.All |

 The signed-in user must also be in a directory role that permits them to read an access review.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/accessReviews/definitions/{definition-id}/instances/{instance-id}/decisions
```

## Optional query parameters
This method supports `$select`, `$filter`, `$orderBy`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
None.

## Request body
Do not supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an array of [accessReviewInstanceDecisionItem](../resources/accessreviewinstance.md) objects in the response body.

## Examples
### Request
The following example shows a request to retrieve all the decisions on an instance of an access review.


# [HTTP](#tab/http)

GET https://graph.microsoft.com/beta/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')?$expand=instance($expand=definition)

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessReviewInstanceDecisionItems",
    "@odata.count": 10,
    "value": [
        {
            "id": "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
            ...,
            "principal": {
                    "odata.type": "#microsoft.graph.userIdentity",
                    "id": "a6c7aecb-cbfd-4763-87ef-e91b4bd509d9",
                    "displayName": "Shubham Gupta",
                    "userPrincipalName": "shugup@microsoft.com"            
            },
            "resource": {
                "odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",              
                "id": "b4cbd87c-0ee2-4647-a7e3-41b580ea6fed",
                "displayName": "Priviliged Role Administrator",
                "type": "azureRole",
                "scope": {
                    "id": "b649368b-d667-40c6-acc9-b45b822a3037",
                    "displayName": "Hello world",
                    "type": "subscription"
                }
            },
            "instance": {
                …
                "startDate": "2018-08-03T21:02:30.667Z",
                "endDate": "2018-08-05T21:02:30.667Z",
                "definition": {
                     …
                     "displayName": "Hello world",
                     "descriptionForAdmins": "Hello world"
                }
            }
        },
        {
            "id": "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
            ...,
            "principal": {
                    "odata.type": "#microsoft.graph.userIdentity",
                    "id": "a6c7aecb-cbfd-4763-87ef-e91b4bd509d9",
                    "displayName": "Shubham Gupta",
                    "userPrincipalName": "shugup@microsoft.com"            
            },
            "resource": {
                "odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",              
                "id": "f1edce7a-edad-49fb-83eb-b7f1eda48dd2",
                "displayName": "Global Administrator",
                "type": "azureRole",
                "scope": {
                    "id": "b649368b-d667-40c6-acc9-b45b822a3037",
                    "displayName": "Hello world",
                    "type": "subscription"
                }
            },
            "instance": {
                …
                "startDate": "2018-08-03T21:02:30.667Z",
                "endDate": "2018-08-05T21:02:30.667Z",
                "definition": {
                     …
                     "displayName": "Hello world",
                     "descriptionForAdmins": "Hello world"
                }
            }
        },
        {
            "id": "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
            ...,
            "principal": {
                    "odata.type": "#microsoft.graph.userIdentity",
                    "id": "a6c7aecb-cbfd-4763-87ef-e91b4bd509d9",
                    "displayName": "John Doe",
                    "userPrincipalName": "johndoe@microsoft.com"            
            },
            "resource": {
                "odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",              
                "id": "f1edce7a-edad-49fb-83eb-b7f1eda48dd2",
                "displayName": "Global Administrator",
                "type": "azureRole",
                "scope": {
                    "id": "b649368b-d667-40c6-acc9-b45b822a3037",
                    "displayName": "Hello world",
                    "type": "subscription"
                }
            },
            "instance": {
                …
                "startDate": "2018-08-03T21:02:30.667Z",
                "endDate": "2018-08-05T21:02:30.667Z",
                "definition": {
                     …
                     "displayName": "Hello world",
                     "descriptionForAdmins": "Hello world"
                }
            }
        },
        {
            "id": "2e8e717b-a857-49f0-918a-013cf0415456",
            ...,
            "principal": {
                    "odata.type": "#microsoft.graph.userIdentity",
                    "id": "a6c7aecb-cbfd-4763-87ef-e91b4bd509d9",
                    "displayName": "John Doe 1",
                    "userPrincipalName": "johndoe1@microsoft.com"            
            },
            "resource": {
                "odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",              
                "id": "20a97808-56dd-490a-97a9-73bf2344cce7",
                "displayName": "Hello world",
                "type": "azureRole",
                "scope": {
                    "id": "b649368b-d667-40c6-acc9-b45b822a3037",
                    "displayName": "Hello world",
                    "type": "subscription"
                }
            },
            "instance": {
                …
                "startDate": "2018-08-03T21:02:30.667Z",
                "endDate": "2018-08-05T21:02:30.667Z",
                "definition": {
                     …
                     "displayName": "Hello world",
                     "descriptionForAdmins": "Hello world"
                }
            }
        }
    ]
}
```

## See also

- [Get accessReviewScheduleDefinition](accessreviewscheduledefinition-get.md)
- [Get accessReviewInstance](accessreviewinstance-get.md)


<!--
{
  "type": "#page.annotation",
  "description": "List accessReviewInstanceDecisionItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
