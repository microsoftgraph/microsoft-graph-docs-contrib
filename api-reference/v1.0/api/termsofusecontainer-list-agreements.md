---
title: "List agreements"
description: "Retrieve a list of agreement objects."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
---

# List agreements

Namespace: microsoft.graph

Retrieve a list of [agreement](../resources/agreement.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "termsofusecontainer_list_agreements" } -->
[!INCLUDE [permissions-table](../includes/permissions/termsofusecontainer-list-agreements-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/termsOfUse/agreements
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name         | Type        | Description |
|:-------------|:------------|:------------|
| Authorization | string | Bearer \{token\}. Required. |

## Request body
Don't supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [agreement](../resources/agreement.md) objects in the response body.
## Examples
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_agreements"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/identityGovernance/termsOfUse/agreements
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-agreements-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-agreements-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-agreements-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-agreements-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-agreements-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-agreements-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-agreements-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-agreements-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.agreement",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#agreements",
    "value": [
        {
            "id": "0ec9f6a6-159d-4dd8-a563-1f0b5935e80b",
            "displayName": "All users terms of use",
            "termsExpiration": null,
            "userReacceptRequiredFrequency": "P90D",
            "isViewingBeforeAcceptanceRequired": false,
            "isPerDeviceAcceptanceRequired": false
        },
        {
            "id": "920f5775-d5d7-454b-861f-14685bb24e2c",
            "displayName": "ToU",
            "termsExpiration": null,
            "userReacceptRequiredFrequency": "P90D",
            "isViewingBeforeAcceptanceRequired": false,
            "isPerDeviceAcceptanceRequired": false
        },
        {
            "id": "94410bbf-3d3e-4683-8149-f034e55c39dd",
            "displayName": "Contoso ToU for guest users",
            "termsExpiration": null,
            "userReacceptRequiredFrequency": null,
            "isViewingBeforeAcceptanceRequired": true,
            "isPerDeviceAcceptanceRequired": false
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List agreements",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
