---
title: "Restore ipNamedLocation"
description: "Restore a deleted IP named location object"
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Restore ipNamedLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a deleted [ipNamedLocation](../resources/ipNamedLocation.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "ipnamedlocation-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/ipnamedlocation-restore-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-write](../includes/rbac-for-apis/rbac-conditionalaccess-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identity/conditionalAccess/deletedItems/namedLocations/{namedLocationId}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [namedLocation](../resources/namedlocation.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ipnamedlocationthis.restore"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/namedLocations/1a4c0633-332f-4691-a27a-fd8334938a62/restore
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ipnamedlocationthisrestore-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ipnamedlocationthisrestore-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ipnamedlocationthisrestore-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ipnamedlocationthisrestore-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ipnamedlocationthisrestore-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ipnamedlocationthisrestore-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.namedLocation"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.namedLocation",
    "@odata.type": "#microsoft.graph.countryNamedLocation",
    "id": "1a4c0633-332f-4691-a27a-fd8334938a62",
    "displayName": "Calvin Test USA",
    "modifiedDateTime": "2025-09-05T22:12:01.4444669Z",
    "createdDateTime": "2025-09-05T22:12:01.4444669Z",
    "deletedDateTime": null,
    "countriesAndRegions": [
        "US"
    ],
    "includeUnknownCountriesAndRegions": false,
    "countryLookupMethod": "clientIpAddress"
}
```

