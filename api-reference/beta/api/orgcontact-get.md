---
title: "Get orgContact"
description: "Retrieve the properties and relationships of orgcontact object."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get orgContact

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of an organizational contact object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "orgcontact_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /contacts/{id}
```
## Optional query parameters
This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [orgContact](../resources/orgcontact.md) object in the response body.
## Example
##### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_orgcontact"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/contacts/25caf6a2-d5cb-470d-8940-20ba795ef62d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-orgcontact-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-orgcontact-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-orgcontact-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-orgcontact-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-orgcontact-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-orgcontact-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-orgcontact-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-orgcontact-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.orgContact"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#contacts/$entity",
    "id": "25caf6a2-d5cb-470d-8940-20ba795ef62d",
    "deletedDateTime": null,
    "companyName": "Adatum Corporation",
    "department": null,
    "displayName": "Adele Vance",
    "proxyAddresses": [
        "SMTP:AdeleVance@adatum.com"
    ],
    "givenName": "Adele",
    "imAddresses": [],
    "jobTitle": "Engagement manager",
    "mail": "AdeleVance@adatum.com",
    "mailNickname": "AdeleVance",
    "onPremisesLastSyncDateTime": null,
    "onPremisesSyncEnabled": null,
    "surname": "Vance",
    "addresses": [
        {
            "city": null,
            "countryOrRegion": "United States",
            "officeLocation": null,
            "postalCode": null,
            "state": null,
            "street": null
        }
    ],
    "onPremisesProvisioningErrors": [],
    "phones": [
        {
            "number": null,
            "type": "businessFax"
        },
        {
            "number": null,
            "type": "mobile"
        },
        {
            "number": null,
            "type": "business"
        }
    ],
    "serviceProvisioningErrors": [],
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get orgContact",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
