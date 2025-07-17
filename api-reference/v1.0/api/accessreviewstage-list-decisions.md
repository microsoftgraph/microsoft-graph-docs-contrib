---
title: "List decisions (from a multi-stage access review)"
description: "Get the decisions from a stage in a multi-stage access review."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List decisions (from a multi-stage access review)
Namespace: microsoft.graph

Get the decisions from a stage in a multi-stage access review. The decisions in an [accessReviewStage](../resources/accessReviewStage.md) object are represented by an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessreviewstage_list_decisions" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessreviewstage-list-decisions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinitionId}/instances/{accessReviewInstanceId}/stages/{accessReviewStageId}/decisions
```

## Optional query parameters
This method supports the `$select`, `$filter` (`eq`), `$orderby`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The default page size for this API is 100 **accessReviewStage** objects. To improve efficiency and avoid timeouts due to large result sets, apply pagination using the `$skip` and `$top` query parameters. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_stage_accessreviewinstancedecisionitem"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/16d424f6-0100-4bf1-9ebc-fe009c5e5006/instances/bb14c722-51b8-4962-9bd2-1d96ba773d80/stages/8f0a8999-205b-4c29-a68c-2bee353fd4c5/decisions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-stage-accessreviewinstancedecisionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-stage-accessreviewinstancedecisionitem-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-stage-accessreviewinstancedecisionitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-stage-accessreviewinstancedecisionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-stage-accessreviewinstancedecisionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-stage-accessreviewinstancedecisionitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-stage-accessreviewinstancedecisionitem-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-stage-accessreviewinstancedecisionitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
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
    "@odata.context": "https://graph.microsoft.com/v1.0/identityGovernance/accessReviews/definitions/16d424f6-0100-4bf1-9ebc-fe009c5e5006/instances/bb14c722-51b8-4962-9bd2-1d96ba773d80/stages/8f0a8999-205b-4c29-a68c-2bee353fd4c5/decisions",
    "@odata.count": 1,
    "value": [
        {
            "id": "bfbd4d74-275c-4368-aaa1-06c93838d0d5",
            "accessReviewId": "bb14c722-51b8-4962-9bd2-1d96ba773d80",
            "reviewedDateTime": "2021-05-05T16:48:28.79Z",
            "decision": "Deny",
            "justification": "bye alexxxxx",
            "appliedDateTime": "2021-05-05T16:50:30.9Z",
            "applyResult": "AppliedSuccessfully",
            "recommendation": "Approve",
            "principalLink": "https://graph.microsoft.com/v1.0/users/540da31b-4d25-4934-b7f7-98bc230eb15a",
            "resourceLink": null,
            "resource": null,
            "reviewedBy": {
                "id": "ff15bedb-22de-49ad-b2d7-59656607484d",
                "displayName": "group owner",
                "userPrincipalName": "group owner"
            },
            "appliedBy": {
                "id": "8798d204-fa3c-4d7b-977d-bc939b8a0848",
                "displayName": "Access Reviews",
                "userPrincipalName": ""
            },
            "target": {
                "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemUserTarget",
                "userId": "540da31b-4d25-4934-b7f7-98bc230eb15a",
                "userDisplayName": "Alex Wilber",
                "userPrincipalName": "AlexW@contoso.com"
            },
            "principal": {
                "@odata.type": "#microsoft.graph.userIdentity",
                "id": "540da31b-4d25-4934-b7f7-98bc230eb15a",
                "displayName": "Alex Wilber",
                "userPrincipalName": "AlexW@contoso.com"
            }
        }
    ]
}
```

