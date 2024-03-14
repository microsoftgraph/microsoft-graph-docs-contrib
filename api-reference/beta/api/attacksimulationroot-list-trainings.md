---
title: "List trainings"
description: "Get a list of the training objects and their properties."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List trainings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [training](../resources/training.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "attacksimulationroot_list_trainings" } -->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-list-trainings-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/trainings
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skipToken`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.
If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [training](../resources/training.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_trainings"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/trainings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-trainings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-trainings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-trainings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-trainings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-trainings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-trainings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-trainings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-trainings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.training)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1cdfcb49-1065-46a6-b1c3-672071e20a6b",
      "displayName": "Email phish prevention training",
      "description": "Email phish prevention training",
      "duratonInMinutes": "30",
      "source": "microsoft",
      "type": "dataPrivacy",
      "tags": [],
      "availabilityStatus": "available",
      "hasEvaluation": false,
      "supportedLocales": [
        "en-us",
        "de-de"
      ],
      "createdBy": {
        "email": "alexwaber@contoso.com",
        "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
        "displayName": "Alex Waber"
      },
      "createdDateTime": "2022-01-12T03:15:01.5906699Z",
      "lastModifiedBy": {
        "email": "alexwaber@contoso.com",
        "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
        "displayName": "Alex Waber"
      },
      "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z"
    }
  ]
}
```
