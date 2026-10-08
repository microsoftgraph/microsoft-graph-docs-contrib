---
title: "applicationTemplate: categories"
description: "Get the list of supported categories that can appear in the categories property of an applicationTemplate."
author: "jakubcermak"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 06/03/2026
---

# applicationTemplate: categories

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of supported categories that can appear in the `categories` property of an [applicationTemplate](../resources/applicationtemplate.md). Each entry includes the underlying value used by the API and a localizable display name suitable for showing in a UI.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "applicationtemplate-categories-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/applicationtemplate-categories-permissions.md)]

Additional permissions aren't required to call this API, as long as your application has a valid access token to call Microsoft Graph.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applicationTemplates/microsoft.graph.categories
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$orderby`, `$top`, and `$skip` OData query parameters to help customize the response. Server-side paging isn't supported, so the response doesn't include an `@odata.nextLink` property. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept-Language|Language code. Optional. Providing this header with a supported language code, such as `cs` or `de-DE`, returns the **displayName** values localized to that language where available. If the header isn't specified or the requested language isn't available, **displayName** values are returned in English.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [applicationTemplateCategory](../resources/applicationtemplatecategory.md) collection in the response body.

## Examples

### Example 1: Get the list of supported categories

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applicationtemplate_categories"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/microsoft.graph.categories
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applicationtemplate-categories-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/applicationtemplate-categories-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applicationtemplate-categories-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applicationtemplate-categories-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/applicationtemplate-categories-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/applicationtemplate-categories-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/applicationtemplate-categories-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.applicationTemplateCategory)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.applicationTemplateCategory)",
  "value": [
    {
      "value": "contentSharing",
      "displayName": "Content Sharing"
    },
    {
      "value": "collaboration",
      "displayName": "Collaboration"
    },
    {
      "value": "health",
      "displayName": "Health"
    },
    {
      "value": "crm",
      "displayName": "CRM"
    },
    {
      "value": "productivity",
      "displayName": "Productivity"
    }
  ]
}
```

### Example 2: Get the list of supported categories with localized display names

The following example uses the `Accept-Language` header to request **displayName** values localized to Czech.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "applicationtemplate_categories_localized"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applicationTemplates/microsoft.graph.categories
Accept-Language: cs
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/applicationtemplate-categories-localized-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/applicationtemplate-categories-localized-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/applicationtemplate-categories-localized-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/applicationtemplate-categories-localized-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/applicationtemplate-categories-localized-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/applicationtemplate-categories-localized-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/applicationtemplate-categories-localized-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.applicationTemplateCategory)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.applicationTemplateCategory)",
  "value": [
    {
      "value": "contentSharing",
      "displayName": "Sdílení obsahu"
    },
    {
      "value": "collaboration",
      "displayName": "Spolupráce"
    },
    {
      "value": "health",
      "displayName": "Zdraví"
    },
    {
      "value": "crm",
      "displayName": "CRM"
    },
    {
      "value": "productivity",
      "displayName": "Produktivita"
    }
  ]
}
```
