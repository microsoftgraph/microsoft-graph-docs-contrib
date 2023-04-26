---
title: "List pronounsSettings"
description: "Read the properties and relationships of a pronounsSettings object."
author: "aymen-ms"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: apiPageType
---

# List pronounsSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of the [pronounsSettings](../resources/pronounssettings.md) resource for an organization. 

For more information on settings to manage pronouns support, see [Manage pronouns settings for an organization using the Microsoft Graph API](/graph/pronouns-configure-pronouns-availability).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
| Delegated (work or school account)     | Organization.Read.All, Organization.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application    | Not supported. |

>**Note:** Using delegated permissions for this operation requires the signed-in user to have a global administrator role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/settings/pronouns
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [pronounsSettings](../resources/pronounssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_pronounssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/pronouns
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-pronounssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-pronounssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-pronounssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-pronounssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-pronounssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-pronounssettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.pronounsSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isEnabledInOrganization": true
}
```

