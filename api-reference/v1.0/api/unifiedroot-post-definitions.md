---
title: "Create accessReviewScheduleDefinition"
description: "Create a user-centric (catalog-scope) access review definition under the unified route."
ms.localizationpriority: medium
author: "jyothig123"
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 07/08/2026
---

# Create accessReviewScheduleDefinition

Namespace: microsoft.graph

Create a new user-centric (catalog-scope) [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object through the [unified](../resources/unifiedroot.md) route. With a user-centric review, a reviewer evaluates a principal's access to every group and application contained in an [entitlement management catalog](../resources/accesspackagecatalog.md) in a single review. The catalog is identified in the **resourceScopes** collection of the [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedroot_post_definitions" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedroot-post-definitions-permissions.md)]

[!INCLUDE [rbac-access-reviews-apis-write](../includes/rbac-for-apis/rbac-access-reviews-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /identityGovernance/accessReviews/unified/definitions
```

## Request headers
| Name | Description |
| :--- | :--- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object. Set the **scope** to a [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) whose **resourceScopes** collection contains a resource scope of `scopeType` `catalog` that identifies the catalog to review.

## Response
If successful, this method returns a `201 Created` response code and an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object in the response body.

## Examples

### Example 1: Create a user-centric (catalog) access review definition

The following example creates a review in which the managers of all users review those users' access to every group and application contained in a catalog.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_unifiedroot_definition"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/unified/definitions
Content-type: application/json

{
    "displayName": "Catalog access review",
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
    ],
    "settings": {
        "mailNotificationsEnabled": true,
        "reminderNotificationsEnabled": true,
        "justificationRequiredOnApproval": true,
        "instanceDurationInDays": 6,
        "recommendationsEnabled": true,
        "recurrence": {
            "pattern": {
                "type": "absoluteMonthly",
                "interval": 1
            },
            "range": {
                "type": "noEnd",
                "startDate": "2026-08-31"
            }
        }
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-unifiedroot-definition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-unifiedroot-definition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-unifiedroot-definition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-unifiedroot-definition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-unifiedroot-definition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-unifiedroot-definition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "29f2d16e-9ca6-4052-bbfe-802c48944448",
    "displayName": "Catalog access review",
    "status": "NotStarted",
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
```
