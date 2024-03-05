---
title: "Get siteSettings"
description: "Get the settings of a site."
author: "k-tsoi"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# Get siteSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the settings of a [site].

>**Note:** This API is currently only available on SharePoint and OneDrive for Business.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitesettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitesettings-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{sitesId}/settings
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

If successful, this method returns a `200 OK` response code and a [siteSettings](../resources/sitesettings.md) object in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sitesettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/03164a2b-a288-486a-993e-c41454113e2a/settings
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sitesettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
  "languageTag": "String",
  "timeZone": "String"
  }
}
```

[site]: ../resources/site.md
