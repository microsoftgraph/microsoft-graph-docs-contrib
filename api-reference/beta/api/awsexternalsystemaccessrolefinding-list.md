---
title: "List awsExternalSystemAccessRoleFinding objects"
description: "Get a list of the awsExternalSystemAccessRoleFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsExternalSystemAccessRoleFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsexternalsystemaccessrolefinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsexternalsystemaccessrolefinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding
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

If successful, this method returns a `200 OK` response code and a collection of [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsexternalsystemaccessrolefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-awsexternalsystemaccessrolefinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-awsexternalsystemaccessrolefinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-awsexternalsystemaccessrolefinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-awsexternalsystemaccessrolefinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsexternalsystemaccessrolefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-awsexternalsystemaccessrolefinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-awsexternalsystemaccessrolefinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-awsexternalsystemaccessrolefinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsExternalSystemAccessRoleFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding",
  "value": [
    {
    "@odata.type": "graph.awsExternalSystemAccessRoleFinding",
    "id": "YXdzQ3Jvc3NTeXN0ZW1BY2Nlc3NSb2xlRmluZGluZ3MxMDAwMQ",
    "permissionsCreepIndex": {
      "score": 99
    },
    "role": {
      "@odata.type": "graph.awsRole",
      "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDpyb2xlL0VORzMwNDQ=",
      "externalId": "arn:aws:iam::377596131774:role/ENG3044",
      "displayName": "ENG3044",
      "source": {
        "@odata.type": "graph.awsSource",
        "identityProviderType": "aws",
        "accountId": "956987887735"
      },
      "authorizationSystem": {
        "@odata.type": "graph.awsAuthorizationSystem",
        "id": "{Id}",
        "authorizationSystemId": "956987887735",
        "authorizationSystemName": "cloudknox-development",
        "authorizationSystemType": "aws"
      }
    },
    "accessibleSystemIds": [
      "377596131774",
    ],
    "createdDateTime": "2020-10-11T20:11:45.6711Z",
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessRoleFinding?$skiptoken=foobar"
}
```

