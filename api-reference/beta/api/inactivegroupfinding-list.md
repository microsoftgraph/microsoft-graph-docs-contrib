---
title: "List inactiveGroupFinding objects"
description: "List inactive groups in AWS, Azure and GCP environments."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List inactiveGroupFinding objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties in AWS, Azure, and GCP environments.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactivegroupfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactivegroupfinding-list-permissions.md)]

## HTTP request

List AWS inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveGroupFinding
```

List Azure inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveGroupFinding
```

List GCP inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGroupFinding
```

## Optional query parameters

This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request to list GCP inactive groups.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_inactivegroupfinding"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGroupFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-inactivegroupfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-inactivegroupfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-inactivegroupfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-inactivegroupfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-inactivegroupfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-inactivegroupfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-inactivegroupfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-inactivegroupfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveGroupFinding",
    "value": [
        {
            "id": "MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NA",
            "createdDateTime": "2023-10-17T15:46:31.448597Z",
            "permissionsCreepIndex": {
                "score": 1
            },
            "actionSummary": {
                "assigned": 3011,
                "exercised": 0,
                "available": 7075
            },
            "group": {
                "@odata.type": "#microsoft.graph.gcpGroup",
                "id": "dGVzdGdyb3VwQGNsb3Vka25veC5pbw",
                "externalId": "testgroup@cloudknox.io",
                "displayName": "testgroup",
                "source": {
                    "@odata.type": "#microsoft.graph.gsuiteSource",
                    "identityProviderType": "gsuite",
                    "domain": "carbide-bonsai-205017"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
                    "authorizationSystemId": "carbide-bonsai-205017",
                    "authorizationSystemName": "ck-staging",
                    "authorizationSystemType": "gcp",
                    "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
                }
            }
        },
        {
            "id": "MSxJbmFjdGl2ZUdyb3VwRmluZGluZyw2MDI0NQ",
            "createdDateTime": "2023-10-17T15:46:31.448597Z",
            "permissionsCreepIndex": {
                "score": 1
            },
            "actionSummary": {
                "assigned": 3061,
                "exercised": 0,
                "available": 7075
            },
            "group": {
                "@odata.type": "#microsoft.graph.gcpGroup",
                "id": "ZW5naW5lZXJpbmdAY2xvdWRrbm94Lmlv",
                "externalId": "engineering@cloudknox.io",
                "displayName": "engineering",
                "source": {
                    "@odata.type": "#microsoft.graph.gsuiteSource",
                    "identityProviderType": "gsuite",
                    "domain": "carbide-bonsai-205017"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
                    "authorizationSystemId": "carbide-bonsai-205017",
                    "authorizationSystemName": "ck-staging",
                    "authorizationSystemType": "gcp",
                    "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
                }
            }
        }
    ]
}
```
