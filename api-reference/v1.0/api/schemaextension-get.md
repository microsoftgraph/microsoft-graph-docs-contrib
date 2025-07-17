---
title: "Get schemaExtension"
description: "Get the properties of the specified schemaExtension definition."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: extensions
doc_type: apiPageType
ms.date: 04/17/2024
---

# Get schemaExtension

Namespace: microsoft.graph
Get the properties of the specified [schemaExtension](../resources/schemaextension.md) definition.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "schemaextension_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/schemaextension-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /schemaExtensions/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [schemaExtension](../resources/schemaextension.md) object in the response body.
## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_schemaextension_extcivhhslh_sbtest1",
  "sampleKeys": ["extcivhhslh_sbtest1"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/schemaExtensions/extcivhhslh_sbtest1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-schemaextension-extcivhhslh-sbtest1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-schemaextension-extcivhhslh-sbtest1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-schemaextension-extcivhhslh-sbtest1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-schemaextension-extcivhhslh-sbtest1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-schemaextension-extcivhhslh-sbtest1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-schemaextension-extcivhhslh-sbtest1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-schemaextension-extcivhhslh-sbtest1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-schemaextension-extcivhhslh-sbtest1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.schemaExtension"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#schemaExtensions/$entity",
    "id": "extcivhhslh_sbtest1",
    "description": "SbGraph test extensions",
    "targetTypes": [
        "contact",
        "group"
    ],
    "status": "Available",
    "owner": "da033fe6-d48e-435d-8014-e98a4b166900",
    "properties": [
        {
            "name": "customerType",
            "type": "String"
        }
    ]
}
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get schemaExtension",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
