---
title: "List userSources"
description: "Get a list of the userSource objects associated with an ediscoveryHoldPolicy."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
ms.date: 10/23/2024
---

# List userSources

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [userSource](../resources/security-usersource.md) objects associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_list_usersources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-list-usersources-permissions.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/userSources
```

## Optional query parameters
This method supports the `$filter`, `$orderby`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.userSource](../resources/security-usersource.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_usersource_for_legalholds"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalholds/0053a61a3b6c42738f7606791716a22a/userSources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-usersource-for-legalholds-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-usersource-for-legalholds-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-usersource-for-legalholds-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-usersource-for-legalholds-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-usersource-for-legalholds-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-usersource-for-legalholds-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-usersource-for-legalholds-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.userSource)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/cases/ediscoveryCases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/legalholds('0053a61a3b6c42738f7606791716a22a')/userSources",
  "value": [
    {
      "displayName": "Alex Wilber",
      "createdDateTime": "2022-05-23T00:58:19.0702524Z",
      "holdStatus": "applied",
      "id": "43434642-3137-3138-3432-374142313639",
      "email": "AlexW@contoso.com",
      "includedSources": "mailbox,site",
      "siteWebUrl": "https://m365x809305-my.sharepoint.com/personal/alexw_m365x809305_onmicrosoft_com/",
      "createdBy": {
        "application": null,
        "user": {
          "id": "c25c3914-f9f7-43ee-9cba-a25377e0cec6",
          "displayName": null
        }
      }
    }
  ]
}
```

