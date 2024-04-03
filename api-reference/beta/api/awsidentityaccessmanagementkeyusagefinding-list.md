---
title: "List awsIdentityAccessManagementKeyUsageFinding objects"
description: "Get a list of the awsIdentityAccessManagementKeyUsageFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List awsIdentityAccessManagementKeyUsageFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "awsidentityaccessmanagementkeyusagefinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/awsidentityaccessmanagementkeyusagefinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsIdentityAcessManagementKeyUsageFinding
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

If successful, this method returns a `200 OK` response code and a collection of [awsIdentityAccessManagementKeyUsageFinding](../resources/awsidentityaccessmanagementkeyusagefinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_awsidentityaccessmanagementkeyusagefinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsIdentityAcessManagementKeyUsageFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-awsidentityaccessmanagementkeyusagefinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-awsidentityaccessmanagementkeyusagefinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-awsidentityaccessmanagementkeyusagefinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-awsidentityaccessmanagementkeyusagefinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-awsidentityaccessmanagementkeyusagefinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-awsidentityaccessmanagementkeyusagefinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-awsidentityaccessmanagementkeyusagefinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-awsidentityaccessmanagementkeyusagefinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsIdentityAccessManagementKeyUsageFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.awsIdentityAcessManagementKeyUsageFinding",
  "value": [
    {
      "@odata.type": "graph.awsIdentityAcessManagementKeyUsageFinding",
      "id": "aWRlbnRpdHlBY2Vzc01hbmFnZW1lbnRLZXlVc2FnZUZpbmRpbmcxMjM",
      "actionSummary": {
        "assigned": 10783,
        "exercised": 0,
        "available": 10793
      },
      "awsAccessKeyDetails": {
        "createdDateTime": "2021-09-21T05:15:52Z",
        "lastUsedDateTime": "2023-08-10T03:12:00Z"
      },
      "accessKey": {
        "@odata.type": "graph.awsAccessKey",
        "id":"QUtJQTU1VUhNS0IzNUJPSUpHUkk=",
        "externalId":"AKIA55UHMKB35BOIJGRI",
        "displayName": "AKIA55UHMKB35BOIJGRI",
        "authorizationSystem": {
          "@odata.type": "graph.awsAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "956987887735",
          "authorizationSystemName": "cloudknox-development",
          "authorizationSystemType": "aws"
        },
        "owner": { // NOTE: Because of a limit in our current data model, we do not have all of the standard identity information
          "@odata.type": "graph.awsUser",
          "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2dlZXRh",
          "externalId":"arn:aws:iam::956987887735:user/geeta",
          "displayName": "geeta",
          "source": {
            "@odata.type": "graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
          }
        }
      },
      "status": "inactive",
      "permissionsCreepIndex": {
        "score": 99
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z"
    },

  ]
}
```

