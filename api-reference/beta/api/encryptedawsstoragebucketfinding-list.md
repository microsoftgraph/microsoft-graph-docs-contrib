---
title: "List encryptedAwsStorageBucketFinding objects"
description: "Get a list of the encryptedAwsStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# List encryptedAwsStorageBucketFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Get a list of the [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "encryptedawsstoragebucketfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/encryptedawsstoragebucketfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.encryptedAwsStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and a collection of [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_encryptedawsstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.encryptedAwsStorageBucketFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-encryptedawsstoragebucketfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-encryptedawsstoragebucketfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-encryptedawsstoragebucketfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-encryptedawsstoragebucketfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-encryptedawsstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-encryptedawsstoragebucketfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-encryptedawsstoragebucketfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-encryptedawsstoragebucketfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.encryptedAwsStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.encryptedAwsStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.encryptedAwsStorageBucketFinding",
      "id": "ZW5jcnlwdGVkQXdzU3RvcmFnZUJ1Y2tldEZpbmRpbmcxMDAwMDE",
      "storageBucket": {
        "@odata.type": "graph.awsAuthorizationSystemResource",
        "id": "YXJuOmF3czpzMzo6Ojc3MjAtdGVzdGJ1Y2tldC0wOTEwLTE=",
        "externalId": "arn:aws:s3:::7720-testbucket-0910-1",
        "displayName": "7720-testbucket-0910-1",
        "resourceType": "bucket",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "377596131774",
          "authorizationSystemName": "cloudknox-staging",
          "authorizationSystemType": "aws"
        }
      },
      "accessibility": "crossAccount",
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    }
  ]
}
```


