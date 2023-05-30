---
title: "Remove service principal owner"
description: "Remove an owner from a servicePrincipals."
author: "sureshja"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Remove service principal owner

Namespace: microsoft.graph

Remove an owner from a [servicePrincipal](../resources/serviceprincipal.md) object. As a recommended best practice, service principals should have at least two owners.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.ReadWrite.All, Application.ReadWrite.OwnedBy |

## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in the Azure portal

<!-- { "blockType": "ignored" } -->
```http
DELETE /serviceprincipals/{id}/owners/{id}/$ref
DELETE /servicePrincipals(appId='{appId}')/owners/{id}/$ref
```

## Request headers
| Name | Description|
|:---- |:---------- |
| Authorization | Bearer {token}. Required.  |

## Request body
In the request body, supply the identifier of the directory object to be assigned as owner.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_delete_owners_e1"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/{id}/owners/{id}/$ref
Content-type: application/json

{
    "@odata.id": "https://graph.microsoft.com/v1.0/directoryObjects/{id}"
}

```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-delete-owners-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceprincipal-delete-owners-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-delete-owners-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-delete-owners-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceprincipal-delete-owners-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceprincipal-delete-owners-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove owner",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

