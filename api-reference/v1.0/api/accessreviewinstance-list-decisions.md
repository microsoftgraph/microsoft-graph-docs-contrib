---
title: "List decisions"
description: "Get the accessReviewInstanceDecisionItem resources from the decisions navigation property."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List decisions
Namespace: microsoft.graph

Retrieve the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects for a specific [accessReviewInstance](../resources/accessreviewinstance.md). A list of zero or more accessReviewInstanceDecisionItem objects are returned, including all of their nested properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewinstance_list_decisions" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewinstance-list-decisions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-read](../includes/rbac-for-apis/rbac-access-reviews-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/decisions
```

## Optional query parameters
This method supports `$select`, `$filter`, `$orderby`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The default page size for this API is 100 **accessReviewInstanceDecisionItem** objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in the response body.

## Examples

### Example 1: Retrieve all decisions for an instance of an access review

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessreviewinstancedecisionitem_v1_e1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/2dca8959-b716-4b4c-a93d-a535c01eb6e0/instances/8d035c9d-798d-47fa-beb4-f986a4b8126f/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewinstancedecisionitem-v1-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-accessreviewinstancedecisionitem-v1-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accessreviewinstancedecisionitem-v1-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewinstancedecisionitem-v1-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewinstancedecisionitem-v1-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accessreviewinstancedecisionitem-v1-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accessreviewinstancedecisionitem-v1-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-accessreviewinstancedecisionitem-v1-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewInstanceDecisionItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('2dca8959-b716-4b4c-a93d-a535c01eb6e0')/instances('8d035c9d-798d-47fa-beb4-f986a4b8126f')/decisions",
    "@odata.count": 1,
    "value": [
        {
            "id": "139166ec-d214-4835-95aa-3c1d89581e51",
            "accessReviewId": "8d035c9d-798d-47fa-beb4-f986a4b8126f",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Deny",
            "principalLink": "https://graph.microsoft.com/v1.0/users/1800bb2c-955d-4205-8471-3a6c3116435d",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
                "userDisplayName": "Diego Siciliani",
                "userPrincipalName": "DiegoS@contoso.com"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "1800bb2c-955d-4205-8471-3a6c3116435d",
                "displayName": "guest example",
                "userPrincipalName": "guest@guest.com"
                }
        },
        {
            "id": "4bde8d40-9224-4aa3-936b-08d73e1baf47",
            "accessReviewId": "6444d4fd-ab55-4608-8cf9-c6702d172bcc",
            "reviewedDateTime": null,
            "decision": "NotReviewed",
            "justification": "",
            "appliedDateTime": null,
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/11feb738-0039-4a6c-a045-dcb91a47969a",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "displayName": "guest example",
                "userPrincipalName": "",
                "userPrincipalName": "guest@guest.com"
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000",
                "displayName": "",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "11feb738-0039-4a6c-a045-dcb91a47969a",
                "userDisplayName": "Johanna Lorenz",
                "userPrincipalName": "JohannaL@contoso.com"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "11feb738-0039-4a6c-a045-dcb91a47969a",
                "displayName": "Johanna Lorenz",
                "userPrincipalName": "JohannaL@contoso.com"
            }
        }
    ]
}
```

### Example 2: Retrieve all decision items for which you're a reviewer and expand the definitions

#### Request
The following example shows a request to retrieve all the decisions on every instance and defintion that the calling user is the reviewer for.

<!-- {
  "blockType": "request",
  "name": "list_accessReviewInstanceDecisionItem_expand_v1_e2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/decisions/filterByCurrentUser(on='reviewer')?$expand=instance($expand=definition)
```

#### Response

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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#accessReviewInstanceDecisionItems",
    "@odata.count": 10,
    "value": [
        {
            "id": "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
            "principal": {
                    "odata.type": "#microsoft.graph.userIdentity",
                    "id": "a6c7aecb-cbfd-4763-87ef-e91b4bd509d9",
                    "displayName": "Adele Vance",
                    "userPrincipalName": "adele@contoso.com"            
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
                "startDate": "2018-08-03T21:02:30.667Z",
                "endDate": "2018-08-05T21:02:30.667Z",
                "definition": {
                     "displayName": "Hello world",
                     "descriptionForAdmins": "Hello world"
                }
            }
        }
    ]
}
```

### Example 3: Retrieve all decisions for an instance of an access review along with insights

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accessreviewinstancedecisionitem_expandinsights_v1_e3"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/60860cdd-fb4d-4054-91ba-444404f3baa6/instances/14444cdb-6a18-4c08-ba2c-48c02f0a0138/decisions?$expand=insights
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-accessreviewinstancedecisionitem-expandinsights-v1-e3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessReviewInstanceDecisionItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0')/instances('6444d4fd-ab55-4608-8cf9-c6702d172bcc')/decisions(insights())",
    "@odata.count": 2,
    "value": [
        {
            "id": "e6cafba0-cbf0-4748-8868-0810c7f4cc06",
            "accessReviewId": "6444d4fd-ab55-4608-8cf9-c6702d172bcc",
            "applyResult": "New",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
            "resourceLink": "https://graph.microsoft.com/v1.0/groups/98f41dad-68d5-42f6-a50f-ddd75c5c5539",
            "reviewedBy": {
                "id": "00000000-0000-0000-0000-000000000000"
            },
            "appliedBy": {
                "id": "00000000-0000-0000-0000-000000000000"
            },
            "resource": {
                "id": "98f41dad-68d5-42f6-a50f-ddd75c5c5539",
                "displayName": "poltest1_g01",
                "type": "group"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "04777c4b-4d43-4d32-a2e7-1eba5d03f8cf"
            },
            "insights@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/definitions('5eac5a70-7cd7-4f20-92b0-f9dba70dd7f0')/instances('6444d4fd-ab55-4608-8cf9-c6702d172bcc')/decisions('e6cafba0-cbf0-4748-8868-0810c7f4cc06')/insights",
            "insights": [
                {
                    "@odata.type": "#microsoft.graph.userSignInInsight",
                    "id": "00000000-0000-0000-0000-000000000000",
                    "insightCreatedDateTime": null,
                    "lastSignInDateTime": "2022-02-11T20:00:34Z"
                },
                {
                    "@odata.type": "#microsoft.graph.membershipOutlierInsight",
                    "id": "f8b5b125-2df6-405c-9cab-6c0e477cbf0a",
                    "insightCreatedDateTime": "2022-08-09T08:25:00Z",
                    "memberId": "04777c4b-4d43-4d32-a2e7-1eba5d03f8cf",
                    "containerId": "98f41dad-68d5-42f6-a50f-ddd75c5c5539",
                    "outlierMemberType": "user",
                    "outlierContainerType": "group"
                }
            ]
        }
    ]
}
```
