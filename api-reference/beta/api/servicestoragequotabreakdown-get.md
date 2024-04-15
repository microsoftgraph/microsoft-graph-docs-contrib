---
title: "Get serviceStorageQuotaBreakdown"
description: "Read the properties and relationships of a serviceStorageQuotaBreakdown object."
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.subservice: onedrive
doc_type: apiPageType
---

# Get serviceStorageQuotaBreakdown
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "servicestoragequotabreakdown_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/servicestoragequotabreakdown-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/settings/storage/quota/services/{serviceStorageQuotaBreakdownId}
GET /users/{usersId}/settings/storage/quota/services/{serviceStorageQuotaBreakdownId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) object in the response body.

## Examples

### Request
Here's an example  of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_servicestoragequotabreakdown"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/settings/storage/quota/services/OneDrive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-servicestoragequotabreakdown-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-servicestoragequotabreakdown-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-servicestoragequotabreakdown-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-servicestoragequotabreakdown-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-servicestoragequotabreakdown-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-servicestoragequotabreakdown-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-servicestoragequotabreakdown-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-servicestoragequotabreakdown-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
Here's an example  of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.serviceStorageQuotaBreakdown"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "displayName": "OneDrive",
  "id": "OneDrive",
  "used": 102633320226,
  "manageWebUrl": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get serviceStorageQuotaBreakdown",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/me:
      /me/settings/storage/quota/services/OneDrive
      Uri path requires navigating into unknown object hierarchy: missing property 'storage' on 'userSettings'. Possible issues:
  	 1) Doc bug where 'storage' isn't defined on the resource.
  	 2) Doc bug where 'storage' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'userSettings' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
