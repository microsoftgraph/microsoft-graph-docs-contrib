---
title: "Update contactMergeSuggestions"
description: "Update the properties of a contactMergeSuggestions object."
author: "kevinbellinger"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Update contactMergeSuggestions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [contactMergeSuggestions](../resources/contactmergesuggestions.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "contactmergesuggestions_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/contactmergesuggestions-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/settings/contactMergeSuggestions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|`true` if the duplicate contact merge suggestions feature is enabled for user; `false` if the feature is disabled. Default is `true`.|



## Response

If successful, this method returns a `204 No Content` response code and the value is updated on the backend.

## Examples

The following example updates the **isEnabled** privacy setting to disable the duplicate contacts merge suggestions feature.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_contactmergesuggestions"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/settings/contactMergeSuggestions
Content-Type: application/json

{
  "isEnabled": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-contactmergesuggestions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-contactmergesuggestions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-contactmergesuggestions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-contactmergesuggestions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-contactmergesuggestions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-contactmergesuggestions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-contactmergesuggestions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-contactmergesuggestions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "update_contactmergesuggestions"
}
-->
``` http
HTTP/1.1 204 No Content
```

