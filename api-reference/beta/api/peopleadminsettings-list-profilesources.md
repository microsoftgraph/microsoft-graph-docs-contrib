---
title: "List profileSources"
description: "Get a list of the profileSource objects and their properties, which represent both external data sources and out-of-the-box Microsoft data sources configured for user profiles in an organization."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# List profileSources

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [profileSource](../resources/profilesource.md) objects and their properties, which represent both external data sources and out-of-the-box Microsoft data sources configured for user profiles in an organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_list_profilesources" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-list-profilesources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /admin/people/profileSources
```

## Optional query parameters

This method supports the `$select`, `$filter`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [profileSource](../resources/profilesource.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_profilesource"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/people/profileSources
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-profilesource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-profilesource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-profilesource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-profilesource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-profilesource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-profilesource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-profilesource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profileSource"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.profileSource",
      "id": "27f1af7b-b166-4f5b-b994-ae135a581547",
      "sourceId": "bamboohr1",
      "kind": "BambooHR",
      "displayName": "HR Platform",
      "webUrl": "https://bamboohr.contoso.com/login",
      "localizations": [
        {
          "displayName": "HR-Platform",
          "webUrl": "http://bamboohr.contoso.com/en-us/login",
          "languageTag": "en-us"
        },
        {
          "displayName": "HR-Plattform",
          "webUrl": "http://bamboohr.contoso.com/de/login",
          "languageTag": "de"
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.profileSource",
      "id": "520c18f8-0284-4d79-9b14-8a2d74461370",
      "sourceId": "4ce763dd-9214-4eff-af7c-da491cc3782d",
      "kind": "MSEntra",
      "displayName": "Contoso Microsoft Entra",
      "webUrl": "https://login.microsoftonline.com",
      "localizations": [
        {
          "displayName": "Contoso Microsoft Entra",
          "webUrl": "https://login.microsoftonline.com",
          "languageTag": "en-us"
        }
      ]
    }
  ]
}
```
