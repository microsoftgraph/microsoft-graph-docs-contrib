---
title: "Get teamworkHostedContent"
description: "Retrieve the hosted content in a teamsAppIcon."
ms.localizationpriority: medium
author: "jecha"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# Get teamworkHostedContent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [hosted content](../resources/teamworkhostedcontent.md) in an [app's icon](../resources/teamsappicon.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for app icon in app catalog
<!-- { "blockType": "permissions", "name": "teamworkhostedcontent_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworkhostedcontent-get-permissions.md)]

## HTTP request

Get hosted content in app icon in app catalog:

<!-- { "blockType": "ignored" } -->
```http
GET /appCatalogs/teamsApps/{teams-app-id}/appDefinitions/{app-definition-id}/colorIcon/hostedContent/
GET /appCatalogs/teamsApps/{teams-app-id}/appDefinitions/{app-definition-id}/colorIcon/hostedContent/$value
GET /appCatalogs/teamsApps/{teams-app-id}/appDefinitions/{app-definition-id}/outlineIcon/hostedContent/
GET /appCatalogs/teamsApps/{teams-app-id}/appDefinitions/{app-definition-id}/outlineIcon/hostedContent/$value
```

## Optional query parameters

This operation supports the `$select` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkHostedContent](../resources/teamworkhostedcontent.md) object in the response body.

## Examples

### Example 1: Get the bytes of the hosted content of the color icon of a Teams app in the catalog

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamsappicon_get_hostedcontent_coloricon_value",
  "sampleKeys": ["5a31d4f7-a11d-4052-96eb-1b40786a2a78", "NWEzMWQ0ZjctYTExZC00MDUyLTk2ZWItMWI0MDc4NmEyYTc4IyM2LjAuNSMjUHVibGlzaGVk"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps/5a31d4f7-a11d-4052-96eb-1b40786a2a78/appDefinitions/NWEzMWQ0ZjctYTExZC00MDUyLTk2ZWItMWI0MDc4NmEyYTc4IyM2LjAuNSMjUHVibGlzaGVk/colorIcon/hostedContent/
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamsappicon-get-hostedcontent-coloricon-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamsappicon-get-hostedcontent-coloricon-value-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamsappicon-get-hostedcontent-coloricon-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamsappicon-get-hostedcontent-coloricon-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamsappicon-get-hostedcontent-coloricon-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamsappicon-get-hostedcontent-coloricon-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/teamsappicon-get-hostedcontent-coloricon-value-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamsappicon-get-hostedcontent-coloricon-value-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** `contentBytes` and `contentType` are always set to null.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkHostedContent"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#appCatalogs/teamsApps('5a31d4f7-a11d-4052-96eb-1b40786a2a78')/appDefinitions('NWEzMWQ0ZjctYTExZC00MDUyLTk2ZWItMWI0MDc4NmEyYTc4IyM2LjAuNSMjUHVibGlzaGVk')/colorIcon/hostedContent/$entity",
    "id": "aWQ9LHR5cGU9MSx1cmw9aHR0cHM6Ly91cy1hcGkuYXNtLnNreXBlLmNvbS92MS9vYmplY3RzLzAtd3VzLWQ0LWQwOGVkNTQ2MjQ2MTliNTc4OGIwMWUzODNlMWVjYzU3L3ZpZXdzL2ltZ3BzaF9mdWxsc2l6ZQ==",
    "contentBytes": null,
    "contentType": null
}
```

### Example 2: Get the bytes of the hosted content of the outline icon of a Teams app in the catalog

#### Request

The following example shows a request.

> **Note:** Requests for the raw value does not support [OData query parameters](/graph/query-parameters) to customize the response.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamsappicon_get_hostedcontentbytes_outlineicon_value",
  "sampleKeys": ["5a31d4f7-a11d-4052-96eb-1b40786a2a78", "NWEzMWQ0ZjctYTExZC00MDUyLTk2ZWItMWI0MDc4NmEyYTc4IyM2LjAuNSMjUHVibGlzaGVk"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/appCatalogs/teamsApps/5a31d4f7-a11d-4052-96eb-1b40786a2a78/appDefinitions/NWEzMWQ0ZjctYTExZC00MDUyLTk2ZWItMWI0MDc4NmEyYTc4IyM2LjAuNSMjUHVibGlzaGVk/outlineIcon/hostedContent/$value
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/teamsappicon-get-hostedcontentbytes-outlineicon-value-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/teamsappicon-get-hostedcontentbytes-outlineicon-value-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/teamsappicon-get-hostedcontentbytes-outlineicon-value-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/teamsappicon-get-hostedcontentbytes-outlineicon-value-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamsappicon-get-hostedcontentbytes-outlineicon-value-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/teamsappicon-get-hostedcontentbytes-outlineicon-value-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/teamsappicon-get-hostedcontentbytes-outlineicon-value-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response that contains bytes for the hosted content in the body. `content-type` header specifies the kind of hosted content.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
Content-type: image/png
```

## Related content

- [Get icons of a Teams app](teamsappicon-get.md)
- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
