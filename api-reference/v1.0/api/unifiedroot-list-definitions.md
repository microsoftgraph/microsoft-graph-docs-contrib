---
title: "List accessReviewScheduleDefinitions"
description: "Retrieve the accessReviewScheduleDefinition objects for user-centric (catalog-scope) access reviews under the unified route."
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/08/2026
---

# List accessReviewScheduleDefinitions

Namespace: microsoft.graph

Retrieve the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects for user-centric (catalog-scope) access reviews through the [unified](../resources/unifiedroot.md) route. A list of zero or more **accessReviewScheduleDefinition** objects is returned, including all of their nested properties, for each access review series created. This doesn't include the associated [accessReviewInstance](../resources/accessreviewinstance.md) objects.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedroot_list_definitions" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroot-list-definitions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-read](../includes/rbac-for-apis/rbac-access-reviews-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/accessReviews/unified/definitions
```

## Optional query parameters
This method supports the `$select`, `$top`, `$skip`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The default page size for this API is 100 **accessReviewScheduleDefinition** objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

## Request headers
| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body
Don't supply a request body.

## Response
If successful, this method returns a `200 OK` response code and an array of [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects in the response body.

## Examples

### Example 1: List user-centric access review definitions

#### Request

<!-- {
  "blockType": "request",
  "name": "list_unifiedroot_definitions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/unified/definitions
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "isCollection": "true"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/accessReviews/unified/definitions",
    "@odata.count": 1,
    "value": [
        {
            "id": "29f2d16e-9ca6-4052-bbfe-802c48944448",
            "displayName": "Catalog access review",
            "status": "InProgress",
            "descriptionForAdmins": "Quarterly user-centric review of catalog resources",
            "scope": {
                "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
                "principalScopes": [
                    {
                        "@odata.type": "#microsoft.graph.accessReviewPrincipalScope",
                        "scopeType": "allUsers"
                    }
                ],
                "resourceScopes": [
                    {
                        "@odata.type": "#microsoft.graph.accessReviewResourceScope",
                        "resourceId": "c6010d0c-ff41-4929-9776-fa03a03dd5ac",
                        "scopeType": "catalog"
                    }
                ]
            },
            "reviewers": [
                {
                    "@odata.type": "#microsoft.graph.accessReviewReviewerScope",
                    "scopeType": "manager"
                }
            ]
        }
    ]
}
```
