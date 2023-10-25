---
title: "Delete profileCardProperty"
description: "Delete a profileCardProperty object and remove all customizations from a profile card."
ms.localizationpriority: medium
author: "rwaithera"
ms.prod: "people"
doc_type: "apiPageType"
---

# Delete profileCardProperty

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete the [profileCardProperty](../resources/profilecardproperty.md) object specified by its **directoryPropertyName** from the organization's profile card, and remove any localized customizations for that property.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | PeopleSettings.ReadWrite.All                |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a Tenant Administrator or Global Administrator role.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /admin/people/profileCardProperties/{id}
```

> **Note:** The `/organization/{organizationId}/settings` path is deprecated. Going forward, use the `/admin/people` path.

## Request headers

| Name          | Description    |
|:--------------|:---------------|
| Authorization | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows how to delete the attribute named `Fax` from the profile card for the organization.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_profilecardproperty",
  "sampleKeys": ["fax"]
}-->

```http
DELETE https://graph.microsoft.com/beta/admin/people/profileCardProperties/fax
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-profilecardproperty-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-profilecardproperty-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-profilecardproperty-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-profilecardproperty-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-profilecardproperty-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-profilecardproperty-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-profilecardproperty-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-profilecardproperty-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
