---
title: "List appliesTo"
description: "List application or service principal resources assigned to an application management policy."
ms.localizationpriority: medium
author: "madansr7"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# List appliesTo

Namespace: microsoft.graph

List application and service principal objects that are assigned an [appManagementPolicy](../resources/appManagementPolicy.md) policy object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                                  |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | Application.Read.All and Policy.Read.All, Application.Read.All and Policy.ReadWrite.ApplicationConfiguration |
| Delegated (personal Microsoft account) | Not supported.                                                                                               |
| Application                            | Application.Read.All and Policy.Read.All, Application.Read.All and Policy.ReadWrite.ApplicationConfiguration |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /policies/appManagementPolicies/{id}/appliesTo
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$top` OData query parameters to help customize the response. You can apply `$filter` on properties of [application](../resources/application.md) or [servicePrincipal](../resources/serviceprincipal.md) objects that support `$filter`. For example, the following query retrieves the **appId** and **displayName** of applications or service principals that are assigned the policy.

``` http
https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}/appliesTo?$select=appId,displayName
```

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [appManagementPolicy](../resources/appManagementPolicy.md) objects in the response body.

## Examples

### Example 1: Get applications and service principal objects applied to an app management policy

#### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appManagementPolicyAppliesTo"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}/appliesTo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appmanagementpolicyappliesto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-appmanagementpolicyappliesto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appmanagementpolicyappliesto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appmanagementpolicyappliesto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-appmanagementpolicyappliesto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-appmanagementpolicyappliesto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appManagementPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.application",
      "id": "0d77e011-2fc6-438f-8b93-decb4f926929",
      "appId": "8f527de6-05c9-4032-bca9-b2b56ab2358a",
      "displayName": "TestApp1",
      "createdDateTime": "2018-01-24T05:55:37Z"
    }
  ]
}
```

### Example 2: Get specific properties of applications and service principal objects applied to an app management policy using $select query option

#### Request

The following is an example of the request using $select query option.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_appManagementPolicyAppliesTo_select"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/appManagementPolicies/{id}/appliesTo?$select=id,appId,displayName,createdDateTime
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-appmanagementpolicyappliesto-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-appmanagementpolicyappliesto-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-appmanagementpolicyappliesto-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-appmanagementpolicyappliesto-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-appmanagementpolicyappliesto-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-appmanagementpolicyappliesto-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response that returns `id`, `appId`, `displayName` and `createdDateTime` of applications and service principals where the policy is applied.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appManagementPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#directoryObjects(id,appId,displayName,createdDateTime)",
  "value": [
    {
      "@odata.type": "#microsoft.graph.application",
      "id": "0d77e011-2fc6-438f-8b93-decb4f926929",
      "appId": "8f527de6-05c9-4032-bca9-b2b56ab2358a",
      "displayName": "TestApp1",
      "createdDateTime": "2018-01-24T05:55:37Z"
    },
    {
      "@odata.type": "#microsoft.graph.servicePrincipal",
      "id": "0e1fa067-dcc1-4d85-9b4c-e69145dd3efb",
      "appId": "255912cb-e31d-4dee-bee4-3fa5d774d6b9",
      "displayName": "TestApp2",
      "createdDateTime": "2018-01-24T05:55:37Z"
    }
  ]
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "list resources for appManagementPolicies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
