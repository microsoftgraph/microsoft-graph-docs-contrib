---
title: "List microsoftApplicationDataAccessSettings"
description: "Get the settings in a microsoftApplicationDataAccessSettings object that specify access from Microsoft applications to Microsoft 365 user data in an organization."
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: apiPageType
---

# List microsoftApplicationDataAccessSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the _settings_ in a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object that specify access from Microsoft applications to Microsoft 365 user data in an organization.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Organization.Read.All, Organization.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /organization/{organizationId}/settings/microsoftApplicationDataAccess
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_microsoftapplicationdataaccesssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/organization/{organizationId}/settings/microsoftApplicationDataAccess
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-microsoftapplicationdataaccesssettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-microsoftapplicationdataaccesssettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-microsoftapplicationdataaccesssettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-microsoftapplicationdataaccesssettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-microsoftapplicationdataaccesssettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-microsoftapplicationdataaccesssettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.microsoftApplicationDataAccessSettings",
  "name": "list_microsoftapplicationdataaccesssettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

## See also

[Customize item insights privacy](/graph/insights-customize-item-insights-privacy) for an organization.
