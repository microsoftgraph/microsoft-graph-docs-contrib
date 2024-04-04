---
title: "List inactiveAzureServicePrincipalFinding objects"
description: "Get a list of the inactiveAzureServicePrincipalFinding objects and their properties, representing inactive service principals in your Azure environment."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List inactiveAzureServicePrincipalFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) objects and their properties, representing inactive service principals in your Azure environment.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inactiveazureserviceprincipalfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/inactiveazureserviceprincipalfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveAzureServicePrincipalFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) objects in the response body.


## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_inactiveazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveAzureServicePrincipalFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-inactiveazureserviceprincipalfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-inactiveazureserviceprincipalfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-inactiveazureserviceprincipalfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-inactiveazureserviceprincipalfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-inactiveazureserviceprincipalfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-inactiveazureserviceprincipalfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-inactiveazureserviceprincipalfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-inactiveazureserviceprincipalfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveAzureServicePrincipalFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveAzureServicePrincipalFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveAzureServicePrincipalFinding",
      "id": "aW5hY3RpdmVTZXJ2aWNlUHJpbmNpcGFsRmluZGluZzEwMDAx",
      "identity": {
          "@odata.type": "graph.azureServicePincipal",
          "id":"YjRkY2ViZTMtMGQ1Yy00ODQ3LWI2ZjktNWY2ZjllODhhYTUw",
          "externalId": "b4dcebe3-0d5c-4847-b6f9-5f6f9e88aa50",
          "displayName": "ciem-cloudknox-3p-app",
          "source": {
            "@odata.type": "graph.aadSource",
            "identityProviderType": "aad",
            "domain": "6bdeb36e-2415-4f7e-ac03-49c518da0e10"
          },
          "authorizationSystem": {
            "@odata.type": "graph.azureAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "6ea285d9-fe7e-49f6-a0ff-203c1a7ac225",
            "authorizationSystemName": "Microsoft Azure Sponsorship 2",
            "authorizationSystemType": "azure"
          }
      },
      "actionSummary": {
        "assigned": 5046,
        "exercised": 0,
        "available": 12724
      },
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
      },
      "permissionsCreepIndex": {
        "score": 0
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ]
}


```

