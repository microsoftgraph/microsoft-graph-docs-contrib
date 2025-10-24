---
title: "Create profileSource"
description: "Create a new profileSource object."
author: "rwaithera"
ms.date: 04/30/2025
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: apiPageType
---

# Create profileSource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [profileSource](../resources/profilesource.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "peopleadminsettings_post_profilesources" } -->
[!INCLUDE [permissions-table](../includes/permissions/peopleadminsettings-post-profilesources-permissions.md)]

[!INCLUDE [rbac-peopleadmin-apis-write](../includes/rbac-for-apis/rbac-peopleadmin-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/people/profileSources
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

> **Note:** To avoid encoding issues that malform the payload, use `Content-Type: application/json; charset=utf-8`.

## Request body

In the request body, supply a JSON representation of the [profileSource](../resources/profilesource.md) object.

You can specify the following properties when you create a **profileSource**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the profile source intended to inform users about the profile source name.|
|kind|String|Type of the profile source.|
|localizations|[profileSourceLocalization](../resources/profilesourcelocalization.md) collection|Alternative localized labels specified by an administrator.|
|sourceId|String|Profile source identifier used as an alternate key.|
|webUrl|String|Web URL of the profile source that directs users to the page view of profile data.|

## Response

If successful, this method returns a `201 Created` response code and a [profileSource](../resources/profilesource.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_profilesource_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/admin/people/profileSources
Content-Type: application/json

{
  "sourceId": "bamboohr1",
  "displayName": "HR Platform",
  "kind": "BambooHR",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName": "HR-Plattform",
      "webUrl": "http://bamboohr.contoso.com/de/login",
      "languageTag": "de"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-profilesource-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-profilesource-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-profilesource-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-profilesource-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-profilesource-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-profilesource-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-profilesource-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.profileSource",
  "id": "27f1af7b-b166-4f5b-b994-ae135a581547",
  "sourceId": "bamboohr1",
  "displayName": "HR Platform",
  "kind": "BambooHR",
  "webUrl": "https://bamboohr.contoso.com/login",
  "localizations": [
    {
      "displayName": "HR-Plattform",
      "webUrl": "http://bamboohr.contoso.com/de/login",
      "languageTag": "de"
    }
  ]
}
```

