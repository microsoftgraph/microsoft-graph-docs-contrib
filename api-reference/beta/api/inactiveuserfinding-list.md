---
title: "List inactiveUserFinding objects"
description: "Get a list of the inactiveUserFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List inactiveUserFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveUserFinding](../resources/inactiveuserfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactiveuserfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveuserfinding-list-permissions.md)]

## HTTP request

List AWS inactive users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveUserFinding
```

List Azure inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding
```

List GCP inactive groups:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.inactiveUserFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveUserFinding](../resources/inactiveuserfinding.md) objects in the response body.

## Examples

### Request

The following example shows a request to retrieve AWS inactive users.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_inactiveuserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-inactiveuserfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-inactiveuserfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-inactiveuserfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-inactiveuserfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-inactiveuserfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-inactiveuserfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-inactiveuserfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-inactiveuserfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveUserFinding)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.inactiveUserFinding",
    "value": [
        {
            "id": "MSxJbmFjdGl2ZVVzZXJGaW5kaW5nLDEyMw",
            "createdDateTime": "2023-10-11T19:37:40.7989473Z",
            "actionSummary": {
                "assigned": 1,
                "exercised": 2,
                "available": 3
            },
            "identityDetails": {
              "createdDateTime": "String (timestamp)",
              "lastActiveDateTime": "String (timestamp)"
            },
            "identityDetails": {
                "createdDateTime": "2023-10-11T19:37:40.7989483Z",
                "lastActiveDateTime": "2023-10-11T19:37:40.7989485Z"
            },
            "permissionsCreepIndex": {
                "score": 10
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "TW9kZWxJRA",
                "externalId": "ModelID",
                "displayName": "LoadTesting",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "AuthorizationSystemId"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "AuthorizationSystemId",
                    "authorizationSystemName": "AuthSystemName",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsQXV0aG9yaXphdGlvblN5c3RlbUlk"
                }
            }
        }
    ]
}
```
